
Generate speech with a preset voice and save it in the workspace.

Speech generation uses a conformed Vercel AI Gateway model and is paid-only at launch.

## Parameters

<ParamField type="string">
  Text to speak, after outer whitespace is removed. Maximum 4,000 characters.
</ParamField>

<ParamField type="string">
  Output base name.
</ParamField>

<ParamField type="string">
  Output directory. Defaults to /home/workspace/Audio.
</ParamField>

<ParamField type="string">
  Preset voice: ara, eve, leo, rex, or sal.
</ParamField>

<ParamField type="string">
  Output format: mp3 or wav.
</ParamField>

<ParamField type="string">
  BCP-47 language code accepted by the selected model, such as en, es-MX, or auto.
</ParamField>

<ParamField type="number">
  Speech speed from 0.7 to 1.5.
</ParamField>

<ParamField type="string">
  Reserved delivery guidance. Current Grok TTS accepts only the default because its Gateway profile does not expose instructions.
</ParamField>

<ParamField type="string">
  Optional public speech model ID.
</ParamField>

<ParamField type="string">
  Reserved workspace voice sample path. Current profiles reject it.
</ParamField>
