
Search files by content or filename using ripgrep.

## Parameters

**query** `string` *required*

Pattern or fragment to search.

**location** `string` (default: USER)

USER | CONVERSATION | ALL\_CONVERSATIONS (default USER).

**case\_sensitive** `boolean` (default: true)

If true (default), search is case-sensitive; if false, case-insensitive.

**exclude\_pattern** `string`

Glob pattern to exclude (e.g. 'node\_modules/\*\*').

**include\_pattern** `string`

Glob pattern to include (e.g. '\*\*/\*.py').

**search\_kind** `string` (default: content)

'content' or 'filename'.
