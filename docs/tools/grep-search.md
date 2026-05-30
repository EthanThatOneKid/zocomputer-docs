
Search files by content or filename using ripgrep.

## Parameters

<ParamField type="string">
  Pattern or fragment to search.
</ParamField>

<ParamField type="string">
  USER | CONVERSATION | ALL\_CONVERSATIONS (default USER).
</ParamField>

<ParamField type="boolean">
  If true (default), search is case-sensitive; if false, case-insensitive.
</ParamField>

<ParamField type="string">
  Glob pattern to exclude (e.g. 'node\_modules/\*\*').
</ParamField>

<ParamField type="string">
  Glob pattern to include (e.g. '\*\*/\*.py').
</ParamField>

<ParamField type="string">
  'content' or 'filename'.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, searches that running device's filesystem instead of the host (only location='USER' is supported for devices). The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, searches that Zo App's sandbox filesystem instead of the host (only location='USER' is supported). Mutually exclusive with 'device'. Requires the 'apps:shell' scope.
</ParamField>
