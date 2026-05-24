
Use your own LLM API provider keys

Bring your own API keys to use custom models in Zo. Connect keys from OpenAI-compatible, Anthropic-compatible, or Groq endpoints.

## Quick start

1. Go to **Settings > Advanced**
2. Under **Custom Models**, fill in the form with your provider details
3. Click **+** to save
4. Click **Test** to verify the connection
5. Select your custom model from the model picker in chat

## Supported formats

| Format    | Description               | Example providers                                                                                              |
| --------- | ------------------------- | -------------------------------------------------------------------------------------------------------------- |
| OpenAI    | OpenAI-compatible APIs    | [OpenAI](https://platform.openai.com), [OpenRouter](https://openrouter.ai), [Together AI](https://together.ai) |
| Anthropic | Anthropic-compatible APIs | [Anthropic](https://console.anthropic.com/docs/en/api/overview)                                                |
| Groq      | Groq API                  | [Groq](https://groq.com)                                                                                       |

<Info>
  Zo uses streaming and tools, so make sure your provider and model have support
  for both.
</Info>

## Configuration

| Field    | Description                                              |
| -------- | -------------------------------------------------------- |
| Name     | Display name shown in the model picker                   |
| Base URL | API endpoint (e.g., `https://api.openai.com/v1`)         |
| API Key  | Your provider API key                                    |
| Format   | API format: OpenAI, Anthropic, or Groq                   |
| Model ID | The model identifier (e.g., `gpt-4o`, `claude-sonnet-4`) |

## Examples

### OpenRouter

* **Base URL**: `https://openrouter.ai/api/v1`
* **Format**: OpenAI
* **Model ID**: `mistralai/ministral-14b-2512` or any [OpenRouter model](https://openrouter.ai/models)

### Anthropic

* **Base URL**: `https://api.anthropic.com`
* **Format**: Anthropic
* **Model ID**: `claude-haiku-4-5-20251001`

### Groq

* **Format**: Groq
* **Model ID**: `moonshotai/kimi-k2-instruct-0905`

## Using custom models

After adding a custom model, it appears in the model picker in chat. Select it like any other model to use it for your conversations.

Custom models don't fall back to Zo's built-in models if they fail — ensure your API key is valid and has sufficient credits.
