
Copy a file or directory between the host, a Zo App, and a fleet device.

Returns a message with the destination path and the number of bytes copied.

## Parameters

<ParamField type="string">
  Absolute path of the file or directory to copy.
</ParamField>

<ParamField type="string">
  Absolute destination path on the target.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id the source lives on. Omit to read from the host. Requires the 'apps:shell' scope.
</ParamField>

<ParamField type="string">
  Optional fleet device the source lives on. Omit to read from the host. Mutually exclusive with source\_zapp. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id to copy into (the app server is /zo-app/server.ts). Omit to write to the host. Requires the 'apps:shell' scope.
</ParamField>

<ParamField type="string">
  Optional fleet device to copy into. Omit to write to the host. Mutually exclusive with dest\_zapp. Requires the 'devices:manage' scope.
</ParamField>
