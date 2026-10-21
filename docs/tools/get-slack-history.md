
Get message history from a Slack channel or thread.

When called from a Slack conversation, the tool description includes the current channel\_id, thread\_id, and team\_id. These are used as defaults when not specified.

## Parameters

**channel\_id** `string`

Slack channel ID to read from. Omit to use the current conversation's channel.

**team\_id** `string`

Slack workspace team ID. Omit to use the current conversation's workspace.

**thread\_ts** `string`

Parent message timestamp to read thread replies. Omit for channel-level messages.

**latest** `string`

Slack timestamp — fetch messages before this time.

**oldest** `string`

Slack timestamp — fetch messages after this time.

**cursor** `string`

Pagination cursor from a previous response's next\_cursor.

**limit** `number` (default: 50)

Number of messages to return (1–100, default 50).
