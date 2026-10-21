
Access Zo programmatically

The Zo API lets you interact with your Zo from scripts, automations, or other apps. Authenticate with an access token from **Settings > Advanced**.

## Quick start

1. Go to **Settings > Advanced** and create an access token
2. Copy it immediately — you won't see it again

```bash theme={null}
curl -X POST https://api.zo.computer/zo/ask \
  -H "Authorization: Bearer zo_sk_your_key_here" \
  -H "Content-Type: application/json" \
  -d '{"input": "Hello, Zo!"}'
```

```json theme={null}
{
  "output": "Hello! How can I help you today?",
  "conversation_id": "conv_abc123"
}
```

> [!WARNING]
>
> Your API key grants full access to your Zo. Keep it secret and never commit it
> to version control.

## API reference

Base URL: `https://api.zo.computer`

> **POST /zo/ask**
>
> Send a message to your Zo and get a response.
>
> **Request**
>
> ```json theme={null}
> {
>   "input": "Add 52% to the humidity log",
>   "conversation_id": null,
>   "model_name": null,
>   "persona_id": null,
>   "output_format": null,
>   "stream": false
> }
> ```
>
> **input** `string` *required*
>
> Your message to Zo
>
> **conversation\_id** `string`
>
> Continue an existing conversation
>
> **model\_name** `string`
>
> Override the default model (use `/models/available` to list options)
>
> **persona\_id** `string`
>
> Override the active persona (use `/personas/available` to list options)
>
> **output\_format** `object`
>
> JSON Schema for structured output
>
> **stream** `boolean` (default: false)
>
> Enable streaming mode. Returns Server-Sent Events (SSE) instead of JSON.
>
> **Response**
>
> ```json theme={null}
> {
>   "output": "Done! Added 52% humidity reading for today.",
>   "conversation_id": "conv_abc123"
> }
> ```
>
> **output** `string | object`
>
> Zo's response. Returns an object if `output_format` was specified.
>
> **conversation\_id** `string`
>
> ID to continue this conversation in subsequent requests.
>
> **Streaming Response** (when `stream: true`)
>
> Returns a Server-Sent Events stream with `Content-Type: text/event-stream`. Each event has the format:
>
> ```
> event: <EventType>
> data: <JSON>
> ```
>
> **Event Types:**
>
> * `FrontendModelResponse` — Text chunk from the model (`data.content`)
> * `End` — Stream completed (includes `data.output` if `output_format` was specified)
> * `Error` — Error occurred (`data.message`)
>
> The `x-conversation-id` response header contains the conversation ID for follow-up requests.

> **GET /models/available**
>
> List all available models you can use with the `/zo/ask` endpoint. When authenticated with an API key, includes your BYOK (Bring Your Own Key) configurations.
>
> **Response**
>
> ```json theme={null}
> {
>   "models": [
>     {
>       "model_name": "byok:3d078e43-1465-4d67-a399-35ef1a8ea1e6",
>       "label": "My Custom Model",
>       "vendor": "Custom",
>       "description": "BYOK: openai format",
>       "type": null,
>       "context_window": null,
>       "is_byok": true
>     },
>     {
>       "model_name": "anthropic:claude-haiku-4-5-20251001",
>       "label": "Haiku 4.5",
>       "vendor": "Anthropic",
>       "description": "Anthropic's fastest model...",
>       "type": "fast",
>       "context_window": 200000,
>       "is_byok": false
>     }
>   ]
> }
> ```
>
> **models** `array`
>
> List of available models
>
> **models\[].model\_name** `string`
>
> The value to pass to `model_name` in `/zo/ask`
>
> **models\[].label** `string`
>
> Human-readable model name
>
> **models\[].vendor** `string`
>
> Model provider (e.g., "Anthropic", "OpenAI", "Custom")
>
> **models\[].description** `string | null`
>
> Short description of the model's capabilities
>
> **models\[].type** `string | null`
>
> Either "fast" or "capable", indicating the model's speed/capability tradeoff
>
> **models\[].context\_window** `number | null`
>
> Maximum context window size in tokens
>
> **models\[].is\_byok** `boolean`
>
> Whether this is a BYOK (Bring Your Own Key) model

> **GET /personas/available**
>
> List all configured personas. Use the returned `id` values with the `persona_id` parameter in `/zo/ask` to override the active persona.
>
> **Response**
>
> ```json theme={null}
> {
>   "personas": [
>     {
>       "id": "a1b2c3d4",
>       "name": "Technical Writer",
>       "prompt": "You are a concise technical writer...",
>       "model": "anthropic:claude-sonnet-4",
>       "image": null
>     },
>     {
>       "id": "e5f6g7h8",
>       "name": "Data Analyst",
>       "prompt": "You analyze data and produce insights...",
>       "model": null,
>       "image": "https://static.z.computer/img/persona/649a97ba-c7af-4d63-b401-b0660cd91dd2.png"
>     }
>   ]
> }
> ```
>
> **personas** `array`
>
> List of configured personas
>
> **personas\[].id** `string`
>
> The value to pass to `persona_id` in `/zo/ask`
>
> **personas\[].name** `string`
>
> Display name for the persona
>
> **personas\[].prompt** `string`
>
> System prompt defining the persona's behavior
>
> **personas\[].model** `string | null`
>
> AI model ID, or null for system default
>
> **personas\[].image** `string | null`
>
> Avatar image URL

## Examples

### Continuing a conversation

Use the returned `conversation_id` to continue the conversation:

```bash theme={null}
curl -X POST https://api.zo.computer/zo/ask \
  -H "Authorization: Bearer zo_sk_your_key_here" \
  -H "Content-Type: application/json" \
  -d '{"input": "What did I just say?", "conversation_id": "conv_abc123"}'
```

### Structured output

Use `output_format` to get responses as structured JSON. This is based on [OpenAI's Structured Outputs](https://platform.openai.com/docs/guides/structured-outputs).

```bash theme={null}
curl -X POST https://api.zo.computer/zo/ask \
  -H "Authorization: Bearer zo_sk_your_key_here" \
  -H "Content-Type: application/json" \
  -d '{
    "input": "List 3 programming languages and their main use cases",
    "output_format": {
      "type": "object",
      "properties": {
        "languages": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "name": { "type": "string" },
              "use_case": { "type": "string" }
            },
            "required": ["name", "use_case"]
          }
        }
      },
      "required": ["languages"]
    }
  }'
```

```json theme={null}
{
  "output": {
    "languages": [
      { "name": "Python", "use_case": "Data science and automation" },
      { "name": "JavaScript", "use_case": "Web development" },
      { "name": "Go", "use_case": "Backend services and infrastructure" }
    ]
  },
  "conversation_id": "conv_abc123"
}
```

### Streaming

Use `stream: true` to receive responses as Server-Sent Events:

```python theme={null}
import httpx
import json

with httpx.stream(
    "POST",
    "https://api.zo.computer/zo/ask",
    headers={
        "Authorization": "Bearer zo_sk_your_key_here",
        "Content-Type": "application/json"
    },
    json={"input": "Tell me a short story", "stream": True}
) as response:
    conv_id = response.headers.get("x-conversation-id")

    event_type = None
    for line in response.iter_lines():
        if line.startswith("event: "):
            event_type = line[7:]
        elif line.startswith("data: "):
            data = json.loads(line[6:])
            if event_type == "FrontendModelResponse":
                print(data.get("content", ""), end="", flush=True)
            elif event_type == "End":
                print()  # Newline at end
```

### Listing available models

```bash theme={null}
curl https://api.zo.computer/models/available \
  -H "Authorization: Bearer zo_sk_your_key_here"
```

### Listing available personas

```bash theme={null}
curl https://api.zo.computer/personas/available \
  -H "Authorization: Bearer zo_sk_your_key_here"
```
