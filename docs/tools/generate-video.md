
Generate a short, 5 second video from an input image using an AI video generation model.

AI video generation on Zo Computer is powered by [OVI](https://fal.ai/models/fal-ai/ovi/image-to-video).

## Parameters

<ParamField type="string">
  Description of the desired motion, scene evolution, and audio description.
</ParamField>

<ParamField type="string">
  Absolute path to the source image. The output video will be saved alongside it.
</ParamField>

<ParamField type="string">
  Suffix appended to the source file's stem for the output (e.g., "\_video").
</ParamField>

<ParamField type="string">
  Desired output orientation ("landscape" → 16:9, "portrait" → 9:16). Defaults to "landscape".
</ParamField>
