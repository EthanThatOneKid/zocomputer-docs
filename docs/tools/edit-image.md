
Remix an existing image (or images) using an AI image model.

AI image editing on Zo Computer is powered by Google [Nano Banana](https://deepmind.google/models/gemini-image/flash/), which excels at maintaining character consistency for rich storytelling, or OpenAI [GPT Image 2](https://openai.com/index/introducing-chatgpt-images-2-0/) for higher-quality edits at \~3× the cost. The default is set per-user in AI settings.

## Parameters

<ParamField type="string">
  A description of the desired image. Be specific, precise, and detailed about the desired modifications to the existing image. Use advanced AI image generation prompting techniques to produce visually compelling results.
</ParamField>

<ParamField type="string[]">
  List of 1 to 3 absolute paths to images to be edited or combined. Edited image will be saved in the same directory as the first input image with the specified suffix. For optimal subject consistency, provide multiple reference images showing different angles/views of the subject.
</ParamField>

<ParamField type="string">
  The suffix to append to the output file (e.g., "\_edited" will create "image\_edited.png"). Defaults to "\_edited" if not specified.
</ParamField>

<ParamField type="string">
  Which model to use. Defaults to "" (empty), which routes through the user's configured default image provider in AI settings. Pass "google" (Nano Banana — fast and cheap) or "openai" (GPT Image 2 — \~3× more expensive but better edit fidelity and legible rendered text) to override on this call only; use the override when the user explicitly asks for a specific provider or a level of quality only one of them satisfies.
</ParamField>
