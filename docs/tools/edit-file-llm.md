
Edit a text file using a fast apply LLM.

## Parameters

<ParamField type="string">
  Absolute path of the file to edit.
</ParamField>

<ParamField type="string">
  A single sentence written in the first person describing what you're changing. Used to help disambiguate uncertainty in the edit.
</ParamField>

<ParamField type="string">
  Specify ONLY the precise lines of code that you wish to edit. Use // ... existing code ... for unchanged sections.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, edits the file inside that running device's container instead of the host. The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, edits the file inside that Zo App's sandbox instead of the host (the app server is /zo-app/server.ts; private/user data goes under /user-data, which is excluded from forks). Mutually exclusive with 'device'. Requires the 'apps:shell' scope.
</ParamField>
