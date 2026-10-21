
Work with the user's connected Google Drive account (includes Google Docs, Sheets, Slides, and Forms).

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"filePath": "/home/workspace/profile.jpeg", "mimeType": "image/jpeg"}`)

**download\_path** `string`

Optional absolute path to save downloaded file. Falls back to configured\_props\["filePath"].

**email** `string`

Optional email address to select a specific connected account.
