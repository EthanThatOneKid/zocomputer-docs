
Look up Discord servers, channels, threads, or members.

When called from a Discord conversation, the tool description includes the current channel\_id, thread\_id, and guild\_id. These are used as defaults when not specified.

## Parameters

<ParamField type="string">
  What to list: "guilds", "channels", "threads", or "members" (default "channels").
</ParamField>

<ParamField type="string">
  Discord server ID. Required for channels/threads/members unless the current conversation is in a server (then it defaults to that server).
</ParamField>

<ParamField type="number">
  Max members to return when resource='members' (default 1000, max 5000). Ignored for other resources.
</ParamField>
