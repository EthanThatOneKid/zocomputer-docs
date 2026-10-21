
Send a message to the user via Discord.

## Parameters

**message** `string` *required*

The text content. Must be non-empty.

**reply\_to\_message\_id** `string`

Optional Discord message ID to reply to. Omit for default reply behavior.

**thread\_id** `string`

Optional Discord thread ID to send into. Overrides channel\_id/current context destination.

**channel\_id** `string`

Optional Discord channel ID to send into when not targeting a thread.
