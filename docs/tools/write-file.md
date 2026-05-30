
Create a new file or rewrite an existing one with the provided content.

Returns a message indicating success or failure, including the absolute path of the file.

## Parameters

<ParamField type="string">
  The absolute path of the file to create or rewrite.
</ParamField>

<ParamField type="string">
  The content to write to the file. Defaults to empty.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, writes the file inside that running device's container instead of the host. The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, writes the file inside that Zo App's sandbox instead of the host (the app server is /zo-app/server.ts). Mutually exclusive with 'device'. Requires the 'apps:shell' scope.
</ParamField>
