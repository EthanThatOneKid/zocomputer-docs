
Work with the user's connected Microsoft Outlook account.

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"to": "team@example.com", "subject": "Subject", "body": "Body"}`)

**download\_path** `string`

Optional absolute path to save downloaded file. Falls back to configured\_props\["filename"].

**email** `string`

Optional email address to select a specific connected account.
