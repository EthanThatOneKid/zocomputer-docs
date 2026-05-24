
Send a message to the user via Telegram.

## Parameters

<ParamField type="string">
  The text content to send. Omit or leave empty only when media\_files is provided.
</ParamField>

<ParamField type="string[]">
  Absolute file paths to send as media attachments. Optional; most messages are text-only.
</ParamField>

<ParamField type="string">
  Username or user ID of a specific connected Telegram account. Leave empty in the normal single-account case. There is no contact\_name parameter.
</ParamField>
