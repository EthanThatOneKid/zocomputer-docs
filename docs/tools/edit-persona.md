
Edit fields of an existing persona. Heavily biased toward additive, surgical changes — there is no full-replacement option.

## Parameters

<ParamField type="string">
  Identifier of the persona to update.
</ParamField>

<ParamField type="string">
  New display name, if renaming.
</ParamField>

<ParamField type="string">
  Edit to apply to the prompt. Provide only the changed sections, with '// ... existing content ...' placeholders for unchanged parts. Merged into the existing prompt via LLM. Strongly prefer additive edits.
</ParamField>

<ParamField type="string">
  A short sentence describing what the edit does. Used with prompt\_edit.
</ParamField>

<ParamField type="string">
  New image URL for the avatar, if updating.
</ParamField>

<ParamField type="number">
  New HSL hue angle (0-360 integer) tinting the chrome Pegasus avatar. Anchors: 0=red, 60=yellow, 120=green, 180=cyan, 240=blue, 300=magenta (wraps at 360). Pass -1 to leave unchanged.
</ParamField>

<ParamField type="string">
  New AI model ID, if updating. User-specific BYOK model IDs in the format 'byok:your\_config\_id' are also accepted.
</ParamField>
