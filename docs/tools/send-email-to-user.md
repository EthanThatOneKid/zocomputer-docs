
Send an email to the user's email address.

If the user has connected their Gmail account, another way to send email is using the Gmail tool. However, this tool is the simplest and recommended way to send an email to the user.

## Parameters

<ParamField type="string">
  Email subject line. Must be non-empty.
</ParamField>

<ParamField type="string">
  Email body in Markdown. May be empty when attachments are provided.
</ParamField>

<ParamField type="string[]">
  Absolute file paths to attach (total size \<= 10MB).
</ParamField>
