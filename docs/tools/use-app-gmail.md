
Work with the user's connected Gmail account.

## Parameters

**tool\_name** `string` *required*

Exact tool name returned by `list_app_tools`, including the Hostagent-native `gmail-get-message` and `gmail-delete-email` actions.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"to": "team@zocomputer.com", "subject": "Subject", "body": "Body"}`)

**download\_path** `string`

Optional absolute path for the original message. `gmail-get-message` defaults to the conversation workspace (`/home/.z/workspaces/&lt;conversation_id&gt;/email_attachment/gmail-&lt;messageId&gt;.eml`); readable artifacts use the same basename. Pass a path only when the user wants the message saved in their files.

**email** `string`

Optional email address to select a specific connected account.
