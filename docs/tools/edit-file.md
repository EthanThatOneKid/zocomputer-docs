
Edit a text file using a sequence of precise edit operations.

## Parameters

<ParamField type="string">
  The absolute path to the file to edit.
</ParamField>

<ParamField type="object[]">
  A list of operations to apply to the file: replace\_block, insert\_after, insert\_before, delete\_block, append\_line.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, edits the file inside that running device's container instead of the host. The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, edits the file inside that Zo App's sandbox instead of the host (the app server is /zo-app/server.ts; private/user data goes under /user-data, which is excluded from forks). Mutually exclusive with 'device'. Requires the 'apps:shell' scope.
</ParamField>
