
Send an SMS text message to the USER or a contact.

MMS media file attachments are supported.

## Parameters

<ParamField type="string">
  The text content. May be empty when media\_files is provided.
</ParamField>

<ParamField type="string[]">
  Absolute file paths to send as MMS attachments (e.g., \["/home/workspace/Images/photo.jpg"]).
</ParamField>

<ParamField type="string">
  Name of a registered contact. If omitted, sends to the USER.
</ParamField>
