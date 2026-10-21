
Work with the user's connected Microsoft OneDrive account via Pipedream.

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"fileId": "abc123"}` or `{"filePath": "/home/workspace/doc.pdf"}`)

**download\_path** `string`

Optional absolute path to save downloaded file. Falls back to configured\_props\["filePath"].

**email** `string`

Optional email address to select a specific connected account.
