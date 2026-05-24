
Power up any MCP-compatible AI with Zo's tools and context

Use the [Zo MCP Server](https://docs.zocomputer.com/mcp-server) to power up any AI that supports MCP with Zo's tools and context. Zo exposes an [MCP (Model Context Protocol)](https://modelcontextprotocol.io) endpoint, so AI tools like [Claude Code](https://claude.ai/code), [Gemini CLI](https://github.com/google-gemini/gemini-cli), [Codex](https://github.com/openai/codex), or any other MCP-compatible tool can access your Zo directly — your files, your connected apps like Gmail and Google Calendar, and all of Zo's tools.

## Why use Zo as an MCP server?

Zo is a full Linux server in the cloud with 50+ tools built in:

* **Files & shell** — read, write, search, run commands
* **Integrations** — Gmail, Calendar, Notion, Linear, Airtable, Dropbox, Spotify
* **Capabilities** — web browsing, image generation, scheduled tasks, texting, emailing
* **Fully yours** — root access, persistent storage, install anything you want

## Quick start

1. Go to **Settings > Advanced** and create an access token
2. Copy it immediately - you won't see it again
3. Configure your AI tool using the instructions below

<Warning>
  Your API key grants full access to your Zo. Keep it secret and never commit it
  to version control.
</Warning>

## Configuration

<AccordionGroup>
  <Accordion title="Claude Code">
    [Claude Code](https://docs.anthropic.com/en/docs/claude-code) is Anthropic's CLI tool for Claude.

    ```bash theme={null}
    claude mcp add --transport http zo https://api.zo.computer/mcp \
      --header "Authorization: Bearer zo_sk_your_key_here"
    ```

    Or add it manually to `~/.claude/settings.json`:

    ```json theme={null}
    {
      "mcpServers": {
        "zo": {
          "type": "http",
          "url": "https://api.zo.computer/mcp",
          "headers": {
            "Authorization": "Bearer zo_sk_your_key_here"
          }
        }
      }
    }
    ```
  </Accordion>

  <Accordion title="Claude Desktop">
    [Claude Desktop](https://claude.ai/download) is Anthropic's desktop app for Claude.

    Add to your `claude_desktop_config.json`:

    ```json theme={null}
    {
      "mcpServers": {
        "zo": {
          "command": "npx",
          "args": [
            "mcp-remote@latest",
            "https://api.zo.computer/mcp",
            "--header",
            "Authorization: Bearer zo_sk_your_key_here"
          ]
        }
      }
    }
    ```

    Config file location: `~/Library/Application Support/Claude/claude_desktop_config.json` (macOS) or `%APPDATA%\Claude\claude_desktop_config.json` (Windows).
  </Accordion>

  <Accordion title="Cursor">
    [Cursor](https://cursor.com) is an AI-powered code editor.

    Add to your Cursor MCP settings (`~/.cursor/mcp.json`):

    ```json theme={null}
    {
      "mcpServers": {
        "zo": {
          "url": "https://api.zo.computer/mcp",
          "headers": {
            "Authorization": "Bearer zo_sk_your_key_here"
          }
        }
      }
    }
    ```
  </Accordion>

  <Accordion title="Zed">
    [Zed](https://zed.dev) is a high-performance code editor.

    Add to your Zed settings (`~/.config/zed/settings.json`):

    ```json theme={null}
    {
      "context_servers": {
        "zo": {
          "settings": {},
          "url": "https://api.zo.computer/mcp",
          "headers": {
            "Authorization": "Bearer zo_sk_your_key_here"
          }
        }
      }
    }
    ```
  </Accordion>

  <Accordion title="OpenCode">
    [OpenCode](https://opencode.ai) is an open-source AI coding agent for the terminal.

    Add to your `opencode.json`:

    ```json theme={null}
    {
      "mcp": {
        "zo": {
          "type": "remote",
          "url": "https://api.zo.computer/mcp",
          "headers": {
            "Authorization": "Bearer zo_sk_your_key_here"
          }
        }
      }
    }
    ```
  </Accordion>

  <Accordion title="Gemini CLI">
    [Gemini CLI](https://geminicli.com/) is Google's command-line tool for Gemini.

    ```bash theme={null}
    gemini mcp add zo https://api.zo.computer/mcp --transport http --scope user \
      -H "Authorization: Bearer zo_sk_your_key_here"
    ```

    Or add it manually to `~/.gemini/settings.json`:

    ```json theme={null}
    {
      "mcpServers": {
        "zo": {
          "url": "https://api.zo.computer/mcp",
          "type": "http",
          "headers": {
            "Authorization": "Bearer zo_sk_your_key_here"
          }
        }
      }
    }
    ```
  </Accordion>

  <Accordion title="Codex">
    [Codex](https://github.com/openai/codex) is OpenAI's CLI tool.

    ```bash theme={null}
    codex mcp add zo -- npx -y mcp-remote https://api.zo.computer/mcp \
      --header "Authorization:Bearer zo_sk_your_key_here" --transport http-only
    ```

    Or add it manually to `~/.codex/config.toml`:

    ```toml theme={null}
    [mcp_servers.zo]
    command = "npx"
    args = ["-y", "mcp-remote", "https://api.zo.computer/mcp", "--header", "Authorization:Bearer zo_sk_your_key_here", "--transport", "http-only"]
    ```
  </Accordion>

  <Accordion title="Other MCP clients">
    Zo's MCP endpoint uses standard HTTP transport. For any MCP-compatible client, use:

    | Setting     | Value                                       |
    | ----------- | ------------------------------------------- |
    | Transport   | HTTP                                        |
    | URL         | `https://api.zo.computer/mcp`               |
    | Auth Header | `Authorization: Bearer zo_sk_your_key_here` |

    If your client only supports stdio transport (not HTTP), you can use [mcp-remote](https://www.npmjs.com/package/mcp-remote) as a bridge. Configure your client to run this command:

    ```bash theme={null}
    npx -y mcp-remote https://api.zo.computer/mcp --header "Authorization:Bearer zo_sk_your_key_here" --transport http-only
    ```

    For example, in a JSON config that expects `command` and `args`:

    ```json theme={null}
    {
      "command": "npx",
      "args": ["-y", "mcp-remote", "https://api.zo.computer/mcp", "--header", "Authorization:Bearer zo_sk_your_key_here", "--transport", "http-only"]
    }
    ```
  </Accordion>
</AccordionGroup>

## Available tools

All [Zo tools](/tools-overview) are exposed via MCP with identical capabilities:

<CardGroup>
  <Card title="File Operations" href="/tools/read-file">
    Read, write, edit files on your Zo computer
  </Card>

  <Card title="Bash Commands" href="/tools/run-bash-command">
    Execute shell commands
  </Card>

  <Card title="Web Browsing" href="/tools/read-webpage">
    Search the web, read pages, take screenshots
  </Card>

  <Card title="Image Generation" href="/tools/generate-image">
    Generate and edit images with AI
  </Card>
</CardGroup>
