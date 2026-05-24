
Create repeatable AI workflows

Zo Computer implements [Agent Skills](https://agentskills.io/), a lightweight, open format for extending AI agent capabilities with specialized knowledge and workflows.

## What Are Agent Skills?

Agent Skills package domain expertise, new capabilities, and repeatable workflows that agents can use. At its core, a skill is a folder containing a SKILL.md file with metadata and instructions that tell an agent how to perform a specific task.

This approach keeps agents fast while giving them access to more context on demand. When a task matches a skill's description, the agent reads the full instructions into context and follows them—optionally loading referenced files or executing bundled code as needed.

### Key Benefits

* **Self-documenting**: A skill author or user can read a SKILL.md file and understand what it does, making skills easy to audit and improve
* **Interoperable**: Skills work across any agent that implements the Agent Skills specification
* **Extensible**: Skills can range in complexity from simple text instructions to bundled scripts, templates, and reference materials
* **Shareable**: Skills are portable and can be easily shared between projects and developers

## Skill structure

Skills are stored in the `Skills` folder within your workspace. You can create a new skill using the `Create Skill` action in the command palette, or by asking Zo to create one for you in the chat.

### How Skills Work in Zo Computer

Skills load progressively so Zo stays fast and only pulls in what it needs for the current task:

* Metadata is always available from each skill's frontmatter, so Zo knows what a skill does and when to use it.
* When a task matches, Zo reads the full `SKILL.md` instructions and follows them.
* If the instructions reference supporting files (templates, examples, guides) or scripts, Zo loads or runs those only when needed.

Skills can bundle additional files alongside `SKILL.md`, such as:

* Instructions: extra guides or reference docs
* Code: scripts Zo can run for deterministic tasks
* Resources: templates, examples, or other data files

Zo only reads or runs these when the skill instructions explicitly call for them.

### Skill Directory Layout

Each skill lives at `Skills/<skill-dir>/`, where `<skill-dir>` is a lowercase slug that matches the `name` in frontmatter.

```
Skills/
└── your-skill-name/
    ├── SKILL.md          # required
    ├── scripts/          # optional executable code
    ├── references/       # optional reference material
    └── assets/           # optional data files or templates
```

### The SKILL.md file

`SKILL.md` files can include the following frontmatter fields:

* `name`: The name of the skill.
* `description`: A description of the skill.
* `compatibility`: Optional – environment requirements.
* `metadata`: Optional – extra metadata.
* `allowed-tools`: Optional – space-delimited list of pre-approved tools.

```md theme={null}
---
name: your-skill-name
description: Your skill description
---

[Clear guidance for AI to execute the skill]
```
