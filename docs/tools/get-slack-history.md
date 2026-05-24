
Get message history from a Slack channel or thread.

When called from a Slack conversation, the tool description includes the current channel\_id, thread\_id, and team\_id. These are used as defaults when not specified.

## Parameters

<ParamField type="string">
  Slack channel ID to read from. Omit to use the current conversation's channel.
</ParamField>

<ParamField type="string">
  Slack workspace team ID. Omit to use the current conversation's workspace.
</ParamField>

<ParamField type="string">
  Parent message timestamp to read thread replies. Omit for channel-level messages.
</ParamField>

<ParamField type="string">
  Slack timestamp — fetch messages before this time.
</ParamField>

<ParamField type="string">
  Slack timestamp — fetch messages after this time.
</ParamField>

<ParamField type="string">
  Pagination cursor from a previous response's next\_cursor.
</ParamField>

<ParamField type="number">
  Number of messages to return (1–100, default 50).
</ParamField>
