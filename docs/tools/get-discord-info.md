
Look up Discord servers, channels, threads, or members.

When called from a Discord conversation, the tool description includes the current channel\_id, thread\_id, and guild\_id. These are used as defaults when not specified.

## Parameters

**resource** `string` (default: channels)

What to list: "guilds", "channels", "threads", or "members" (default "channels").

**guild\_id** `string`

Discord server ID. Required for channels/threads/members unless the current conversation is in a server (then it defaults to that server).

**limit** `number` (default: 1000)

Max members to return when resource='members' (default 1000, max 5000). Ignored for other resources.
