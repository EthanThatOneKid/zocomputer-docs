
Work with the user's connected Dropbox account via Pipedream.

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"filePath": "/home/workspace/profile.jpeg", "mimeType": "image/jpeg"}`)

**download\_path** `string`

Optional write location for downloaded files on the host filesystem.

**email** `string`

Optional email address to select a specific connected account.
