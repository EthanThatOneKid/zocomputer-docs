
Send a message to the user via Slack.

## Parameters

<ParamField type="string">
  The text content (Slack mrkdwn). May be empty when media\_files is provided.
</ParamField>

<ParamField type="string">
  Optional Slack thread\_ts to send into. Overrides channel\_id/current context destination.
</ParamField>

<ParamField type="string">
  Optional Slack channel ID to send into when not targeting a thread.
</ParamField>

<ParamField type="string[]">
  Absolute file paths to send as file attachments (e.g., \["/home/workspace/Images/chart.png"]).
</ParamField>
