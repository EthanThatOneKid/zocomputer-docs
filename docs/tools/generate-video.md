
Generate a short, 5 second video from an input image using an AI video generation model.

AI video generation on Zo Computer is powered by [OVI](https://fal.ai/models/fal-ai/ovi/image-to-video).

## Parameters

**instruction** `string` *required*

Description of the desired motion, scene evolution, and audio description.

**filepath** `string` *required*

Absolute path to the source image. The output video will be saved alongside it.

**file\_suffix** `string` (default: \_video)

Suffix appended to the source file's stem for the output (e.g., "\_video").

**orientation** `string` (default: landscape)

Desired output orientation ("landscape" → 16:9, "portrait" → 9:16). Defaults to "landscape".
