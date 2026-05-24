#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable
from urllib.parse import unquote, urlparse
from urllib.request import Request, urlopen

DEFAULT_SOURCE_URL = "https://docs.zocomputer.com/llms-full.txt"
DEFAULT_OUTPUT_DIR = Path("docs")


@dataclass(frozen=True)
class Section:
    title: str
    source: str
    content: str


def fetch_text(url: str) -> str:
    request = Request(
        url,
        headers={
            "User-Agent": "Mozilla/5.0 (compatible; zocomputer-docs-sync/1.0)",
            "Accept": "text/plain, */*;q=0.8",
        },
    )
    with urlopen(request, timeout=120) as response:
        return response.read().decode("utf-8")


def is_page_heading(lines: list[str], index: int) -> bool:
    if not lines[index].startswith("# "):
        return False

    for next_index in range(index + 1, len(lines)):
        next_line = lines[next_index].strip()
        if not next_line:
            continue
        return next_line.startswith("Source: ")

    return False


def parse_sections(text: str) -> list[Section]:
    sections: list[list[str]] = []
    current: list[str] = []
    lines = text.splitlines()

    for index, line in enumerate(lines):
        if is_page_heading(lines, index):
            if current:
                sections.append(current)
            current = [line]
            continue
        if current:
            current.append(line)

    if current:
        sections.append(current)

    parsed: list[Section] = []
    for lines in sections:
        title = lines[0][2:].strip()
        source = ""
        body_start = 1
        for index, line in enumerate(lines[1:], start=1):
            if line.startswith("Source: "):
                source = line[len("Source: "):].strip()
                body_start = index + 1
                break
        content = "\n".join(lines[body_start:]).rstrip() + "\n"
        parsed.append(Section(title=title, source=source, content=content))

    return parsed


def source_to_relative_path(source: str, fallback_title: str) -> Path:
    parsed = urlparse(source)
    path = unquote(parsed.path).strip("/")
    if not path:
        path = slugify(fallback_title)
    if path.endswith("/"):
        path = path.rstrip("/")
    if not path:
        path = "index"
    if path.endswith(".md"):
        return Path(path)
    return Path(f"{path}.md")


def slugify(value: str) -> str:
    slug = re.sub(r"[^a-zA-Z0-9]+", "-", value.strip().lower())
    slug = re.sub(r"-+", "-", slug).strip("-")
    return slug or "index"


def write_section(output_dir: Path, section: Section) -> Path:
    if not section.source:
        raise ValueError(f"Missing source URL for section: {section.title}")

    relative_path = source_to_relative_path(section.source, section.title)
    output_path = output_dir / relative_path
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(section.content, encoding="utf-8")
    return relative_path


def prune_stale_files(output_dir: Path, active_paths: set[Path]) -> list[Path]:
    removed: list[Path] = []
    if not output_dir.exists():
        return removed

    for path in sorted(output_dir.rglob("*.md")):
        if path.relative_to(output_dir) not in active_paths:
            path.unlink()
            removed.append(path)

    for directory in sorted((p for p in output_dir.rglob("*") if p.is_dir()), reverse=True):
        if not any(directory.iterdir()):
            directory.rmdir()

    return removed


def build_manifest(sections: Iterable[Section], output_dir: Path) -> dict:
    items = []
    for section in sections:
        relative_path = source_to_relative_path(section.source, section.title)
        items.append(
            {
                "title": section.title,
                "source": section.source,
                "path": str(relative_path).replace("\\", "/"),
                "sha256": hashlib.sha256(section.content.encode("utf-8")).hexdigest(),
            }
        )
    return {
        "source_url": DEFAULT_SOURCE_URL,
        "output_dir": str(output_dir),
        "count": len(items),
        "items": items,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Rebuild markdown pages from llms-full.txt")
    parser.add_argument("--source-url", default=DEFAULT_SOURCE_URL)
    parser.add_argument("--output-dir", default=str(DEFAULT_OUTPUT_DIR))
    parser.add_argument("--manifest", default="docs-manifest.json")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    output_dir = Path(args.output_dir)
    text = fetch_text(args.source_url)
    sections = parse_sections(text)

    if not sections:
        print("No sections parsed from source.", file=sys.stderr)
        return 1

    if args.dry_run:
        print(json.dumps(build_manifest(sections, output_dir), indent=2))
        return 0

    output_dir.mkdir(parents=True, exist_ok=True)

    written_paths: set[Path] = set()
    for section in sections:
        written_paths.add(write_section(output_dir, section))

    removed = prune_stale_files(output_dir, written_paths)
    manifest_path = Path(args.manifest)
    manifest_path.write_text(json.dumps(build_manifest(sections, output_dir), indent=2) + "\n", encoding="utf-8")

    print(f"Wrote {len(written_paths)} markdown files to {output_dir}")
    if removed:
        print(f"Removed {len(removed)} stale markdown files")
    print(f"Manifest: {manifest_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
