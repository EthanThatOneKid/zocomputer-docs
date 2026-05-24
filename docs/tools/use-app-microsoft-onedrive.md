
Work with the user's connected Microsoft OneDrive account via Pipedream.

## Parameters

<ParamField type="string">
  Exact tool name returned by `list_app_tools`.
</ParamField>

<ParamField type="object">
  The configured props for the action (e.g., `{"fileId": "abc123"}` or `{"filePath": "/home/workspace/doc.pdf"}`)
</ParamField>

<ParamField type="string">
  Optional absolute path to save downloaded file. Falls back to configured\_props\["filePath"].
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
