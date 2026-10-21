
Send an email to the user's email address.

If the user has connected their Gmail account, another way to send email is using the Gmail tool. However, this tool is the simplest and recommended way to send an email to the user.

## Parameters

**subject** `string` *required*

Email subject line. Must be non-empty.

**markdown\_body** `string` *required*

Email body in Markdown. May be empty when attachments are provided.

**attachments** `string[]`

Absolute file paths to attach (total size \<= 10MB).
