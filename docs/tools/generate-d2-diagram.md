
Generate a block diagram, using D2.

D2 is a domain-specific language for diagramming ([https://d2lang.com](https://d2lang.com)). Use this whenever a diagram would clarify the USER's request. Provide raw D2 text only—no markdown fences, comments, or extra prose. Input is saved as `<file_stem>.d2` in the conversation workspace and rendered to `<file_stem>.png` under Images/, which is returned to the USER.

## Parameters

**code** `string` *required*

Valid D2 source (required, plain text).

**file\_stem** `string` *required*

Base filename for both `.d2` and `.png`.

**output\_dir** `string`

Optional absolute directory for the PNG (defaults to `/home/workspace/Images`).
