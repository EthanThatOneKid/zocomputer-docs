
Work with the user's connected Gmail account.

## Parameters

<ParamField type="string">
  Exact tool name returned by `list_app_tools`, including the Hostagent-native `gmail-get-message` action.
</ParamField>

<ParamField type="object">
  The configured props for the action (e.g., `{"to": "team@zocomputer.com", "subject": "Subject", "body": "Body"}`)
</ParamField>

<ParamField type="string">
  Optional absolute path for the original message. `gmail-get-message` defaults to `/home/workspace/gmail-&lt;messageId&gt;.eml`; readable artifacts use the same basename.
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
