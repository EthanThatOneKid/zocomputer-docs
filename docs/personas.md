
Toggle different styles for your AI

Personas let you have different characters you can chat with in Zo. Different personas can have different styles or behaviors. You can also give them access to different tools.

You can switch between personas at any time, and assign different personas to different channels — so Zo could use one persona in Discord and a different one for SMS.

## Prompt

One way to use Personas is to make your AI "roleplay" as a specific archetype or personality. Another way to use Personas is to provide context that you always want Zo to know when working on a particular task.

For example:

* A "tutor" persona might include background context on what you already know, and what you want to practice. Your prompt can encourage the AI to explain things in a particular way, or quiz you with questions in a particular format.
* A "writer" persona might include examples of the style of writing you want to emulate, and other guidelines that help the AI write in a particular way.

## Permissions

You can control which tools each Persona is allowed to use. This can be useful for keeping a persona focused — e.g. a research assistant that can search the web but can't modify your files, or a coding persona that works with files and shell but doesn't send messages.

You can configure permissions when creating or editing a persona in **Settings → AI → Personas**.

### Permission Presets

Most personas work well with a permission preset:

| Preset         | What it can do                                                                                |
| -------------- | --------------------------------------------------------------------------------------------- |
| **All access** | Everything — no restrictions                                                                  |
| **Workspace**  | Files, web, media, and read access to settings/hosting/commerce — no shell, no communications |
| **Read only**  | Read files, search the web, and view settings — can't modify anything                         |
| **Chat only**  | Conversation only — no tools at all                                                           |

You can also choose **Custom** to pick individual scopes.

When a persona doesn't have access to a tool, that tool is removed from the conversation entirely. Zo won't try to use it or tell you it failed — it simply isn't available.

<Accordion title="Full list of available scopes">
  When using custom scopes, you can grant access to specific categories:

  | Scope              | Description                                                 |
  | ------------------ | ----------------------------------------------------------- |
  | `files:read`       | Read files and search the workspace                         |
  | `files:write`      | Create and edit files (requires `files:read`)               |
  | `shell:execute`    | Run shell commands                                          |
  | `web:search`       | Search web, images, and maps                                |
  | `web:browse`       | Open and interact with web pages                            |
  | `media:generate`   | Generate images, video, and diagrams                        |
  | `media:transcribe` | Transcribe audio and video                                  |
  | `comms:email`      | Send emails                                                 |
  | `comms:sms`        | Send SMS                                                    |
  | `comms:telegram`   | Telegram messages                                           |
  | `comms:discord`    | Discord messages and history                                |
  | `comms:slack`      | Slack messages                                              |
  | `settings:read`    | View personas, agents, and rules                            |
  | `settings:manage`  | Edit personas, agents, and rules (requires `settings:read`) |
  | `hosting:read`     | View sites and services                                     |
  | `hosting:manage`   | Manage sites and services (requires `hosting:read`)         |
  | `commerce:read`    | View payments and orders                                    |
  | `commerce:manage`  | Manage products and payments (requires `commerce:read`)     |
  | `device:use`       | Use connected devices                                       |

  Integration scopes (e.g. `integrations:gmail`, `integrations:linear`) are also available for each connected app.

  Some scopes have dependencies — enabling a "write" scope automatically enables its corresponding "read" scope.
</Accordion>
