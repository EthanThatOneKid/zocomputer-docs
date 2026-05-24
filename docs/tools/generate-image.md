
Generate an image following the provided prompt using an AI image generation model.

AI image generation on Zo Computer is powered by Google [Nano Banana](https://deepmind.google/models/gemini-image/flash/) or OpenAI [GPT Image 2](https://openai.com/index/introducing-chatgpt-images-2-0/). The default is set per-user in AI settings.

## Parameters

<ParamField type="string">
  A description of the desired image. Be specific, precise, and detailed. Use advanced AI image generation prompting techniques to produce visually compelling results.
</ParamField>

<ParamField type="string">
  The base name for the output files (e.g., "myimg" will create "myimg\_1.png", "myimg\_2.png", etc.).
</ParamField>

<ParamField type="number">
  The number of images to generate (between 1 and 10). Defaults to 1.
</ParamField>

<ParamField type="string">
  The directory where the generated images will be saved. Defaults to /home/workspace/Images.
</ParamField>

<ParamField type="string">
  The desired image aspect ratio, e.g. "16:9", "1:1", "3:4".
</ParamField>

<ParamField type="string">
  Which model to use. Defaults to "" (empty), which routes through the user's configured default image provider in AI settings. Pass "google" (Nano Banana — fast and cheap) or "openai" (GPT Image 2 — \~3× more expensive but better prompt adherence and legible rendered text) to override on this call only; use the override when the user explicitly asks for a specific provider or a level of quality only one of them satisfies.
</ParamField>
