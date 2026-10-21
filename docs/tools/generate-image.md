
Generate an image following the provided prompt using an AI image generation model.

AI image generation uses the workspace default from AI settings. The OpenAI provider alias selects [GPT Image 2.5 Flare](https://openai.com/index/introducing-chatgpt-images-2-5/), which requires Gateway media access.

## Parameters

**prompt** `string` *required*

A description of the desired image. Be specific, precise, and detailed. Use advanced AI image generation prompting techniques to produce visually compelling results.

**file\_stem** `string` *required*

The base name for the output files (e.g., "myimg" will create "myimg\_1.png", "myimg\_2.png", etc.).

**n** `number` (default: 1)

The number of images to generate (between 1 and 10). Defaults to 1.

**output\_dir** `string`

The directory where the generated images will be saved. Defaults to /home/workspace/Images.

**aspect\_ratio** `string` (default: 1:1)

The desired image aspect ratio, e.g. "16:9", "1:1", "3:4".

**provider** `string`

Deprecated provider alias. Leave empty for the workspace default, or pass "google" or "openai". The OpenAI alias selects GPT Image 2.5 Flare and requires Gateway media access.
