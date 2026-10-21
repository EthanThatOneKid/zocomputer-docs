
Generate speech with a preset voice and save it in the workspace.

Speech generation uses a conformed Vercel AI Gateway model and is paid-only at launch.

## Parameters

**text** `string` *required*

Text to speak, after outer whitespace is removed. Maximum 4,000 characters.

**file\_stem** `string` *required*

Output base name.

**output\_dir** `string`

Output directory. Defaults to /home/workspace/Audio.

**voice** `string` (default: eve)

Preset voice: ara, eve, leo, rex, or sal.

**format** `string` (default: mp3)

Output format: mp3 or wav.

**language** `string` (default: en)

BCP-47 language code accepted by the selected model, such as en, es-MX, or auto.

**speed** `number` (default: 1)

Speech speed from 0.7 to 1.5.

**instructions** `string` (default: Natural, clear delivery.)

Reserved delivery guidance. Current Grok TTS accepts only the default because its Gateway profile does not expose instructions.

**model** `string`

Optional public speech model ID.

**voice\_sample\_path** `string`

Reserved workspace voice sample path. Current profiles reject it.
