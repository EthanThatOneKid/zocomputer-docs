
Create a new persona for Zo.

## Parameters

<ParamField type="string">
  Persona display name.
</ParamField>

<ParamField type="string">
  System prompt text for the persona.
</ParamField>

<ParamField type="string">
  Optional image URL for the persona avatar.
</ParamField>

<ParamField type="number">
  Optional HSL hue angle (0-360 integer) tinting the chrome Pegasus avatar. Anchors: 0=red, 60=yellow, 120=green, 180=cyan, 240=blue, 300=magenta (wraps at 360). Used when image is unset. Pass -1 to leave unset.
</ParamField>

<ParamField type="string">
  Optional AI model ID. User-specific BYOK model IDs in the format 'byok:your\_config\_id' are also accepted.
</ParamField>
