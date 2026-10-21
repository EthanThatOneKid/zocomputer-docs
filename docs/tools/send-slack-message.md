
Send a message to the user via Slack.

## Parameters

**message** `string` *required*

The text content (Slack mrkdwn). May be empty when media\_files is provided.

**thread\_id** `string`

Optional Slack thread\_ts to send into. Overrides channel\_id/current context destination.

**channel\_id** `string`

Optional Slack channel ID to send into when not targeting a thread.

**media\_files** `string[]`

Absolute file paths to send as file attachments (e.g., \["/home/workspace/Images/chart.png"]).
