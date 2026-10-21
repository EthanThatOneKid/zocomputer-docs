
Look up Slack workspaces, channels, and members.

When called from a Slack conversation, the tool description includes the current channel\_id, thread\_id, and team\_id. These are used as defaults when not specified.

## Parameters

**resource** `string` (default: channels)

What to list: "workspaces", "channels", or "members" (default "channels").

**team\_id** `string`

Slack workspace team ID. Required for channels/members unless the current conversation is in a workspace (then it defaults to that workspace).

**limit** `number` (default: 0)

Max results per page (default 100 for channels/members, max 200).

**cursor** `string`

Pagination cursor from a previous response's next\_cursor.
