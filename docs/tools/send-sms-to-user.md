
Send an SMS text message to the USER or a contact.

MMS media file attachments are supported.

## Parameters

**message** `string` *required*

The text content. May be empty when media\_files is provided.

**media\_files** `string[]`

Absolute file paths to send as MMS attachments (e.g., \["/home/workspace/Images/photo.jpg"]).

**contact\_name** `string`

Name of a registered contact. If omitted, sends to the USER.
