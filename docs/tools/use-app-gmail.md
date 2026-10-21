
Work with the user's connected Gmail account.

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`, including the Hostagent-native `gmail-get-message` action.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"to": "team@zocomputer.com", "subject": "Subject", "body": "Body"}`)

**download\_path** `string`

Optional absolute path for the original message. `gmail-get-message` defaults to `/home/workspace/gmail-&lt;messageId&gt;.eml`; readable artifacts use the same basename.

**email** `string`

Optional email address to select a specific connected account.
