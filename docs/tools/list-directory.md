
Directory listing tool that shows files and subdirectories in a tree structure, helping you explore and understand the project organization.

## Parameters

<ParamField type="string">
  The absolute path to the directory to list.
</ParamField>

<ParamField type="string[]">
  List of glob patterns to ignore.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, lists a directory inside that running device's container instead of the host (requires `python` in the device image). The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, lists a directory inside that Zo App's sandbox instead of the host. Mutually exclusive with 'device'. Requires the 'apps:shell' scope.
</ParamField>
