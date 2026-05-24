
Let Zo use your desktop to browse the web, run commands, send messages, and access files

The Zo desktop app connects your physical computer to Zo, letting the AI run commands on your machine. You add capabilities to control what Zo can do, each granting specific, scoped permissions. Zo can only use capabilities you explicitly enable.

## Quick start

1. Install the [Zo desktop app](/desktop)
2. Log in (your device registers automatically)
3. Go to **Settings > Integrations > Devices**
4. Add capabilities (Browser, Shell, etc.)

<Tip>
  Works best when you refer to your device by name. For example, if you've named your device "Mac", try "use my Mac to check the headlines on CNBC."
</Tip>

## Capabilities

<AccordionGroup>
  <Accordion title="Browser Control">
    Lets Zo use Chrome on your computer to browse the web, click elements, fill forms, and take screenshots. Powered by [`agent-browser`](https://github.com/vercel-labs/agent-browser), a bundled CLI that drives Chrome via the DevTools Protocol. Requires Google Chrome or another Chromium-based browser installed on your machine.

    Because this uses your local browser, Zo can interact with sites you're already logged into.
  </Accordion>

  <Accordion title="iMessage (macOS only)">
    Lets Zo send and read iMessages on your computer. Powered by `imsg`, a bundled CLI that reads the macOS Messages database directly.

    Requires granting Full Disk Access to the Zo desktop app in **System Settings > Privacy & Security**.
  </Accordion>

  <Accordion title="Shell Commands">
    Lets Zo run shell commands on your computer.
  </Accordion>

  <Accordion title="File Access">
    Lets Zo read and manage files on your computer: list, read, copy, move, and create directories.
  </Accordion>

  <Accordion title="Custom">
    Create your own capabilities with a name, permission patterns, and a prompt that tells Zo how to use it. Useful for granting access to specific CLI tools or workflows on your machine.

    Permissions use glob patterns to control which commands are allowed. For example, `Bash(docker *)` allows any command starting with `docker`, and `!Bash(docker rm *)` denies container removal. Deny rules are checked first, and anything not explicitly allowed is blocked by default.
  </Accordion>
</AccordionGroup>
