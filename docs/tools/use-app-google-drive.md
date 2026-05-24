
Work with the user's connected Google Drive account (includes Google Docs, Sheets, Slides, and Forms).

## Parameters

<ParamField type="string">
  Exact tool name returned by `list_app_tools`.
</ParamField>

<ParamField type="object">
  The configured props for the action (e.g., `{"filePath": "/home/workspace/profile.jpeg", "mimeType": "image/jpeg"}`)
</ParamField>

<ParamField type="string">
  Optional absolute path to save downloaded file. Falls back to configured\_props\["filePath"].
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
