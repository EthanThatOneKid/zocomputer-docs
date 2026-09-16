
Remix an existing image (or images) using an AI image model.

Image editing requires a compatible workspace image model, such as Google [Nano Banana](https://deepmind.google/models/gemini-image/flash/). OpenAI image editing is currently unavailable.

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
  Deprecated provider alias. Leave empty to use a compatible workspace default, or pass "google". OpenAI image editing is currently unavailable.
</ParamField>
