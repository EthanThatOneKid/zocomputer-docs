
Create a new persona for Zo.

## Parameters

**name** `string` *required*

Persona display name.

**prompt** `string` *required*

System prompt text for the persona.

**image** `string`

Optional image URL for the persona avatar.

**image\_hue** `number` (default: -1)

Optional HSL hue angle (0-360 integer) tinting the chrome Pegasus avatar. Anchors: 0=red, 60=yellow, 120=green, 180=cyan, 240=blue, 300=magenta (wraps at 360). Used when image is unset. Pass -1 to leave unset.

**model** `string`

Optional AI model ID. BYOK ('byok:\<config\_id>') and ACP ('acp:\<config\_id>') model IDs are also accepted.
