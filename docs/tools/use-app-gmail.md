
Work with the user's connected Gmail account.

## Parameters

<ParamField type="string">
  Exact tool name returned by `list_app_tools`.
</ParamField>

<ParamField type="object">
  The configured props for the action (e.g., `{"to": "team@zocomputer.com", "subject": "Subject", "body": "Body"}`)
</ParamField>

<ParamField type="string">
  Optional absolute path to save downloaded file. Falls back to configured\_props\["filename"].
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
