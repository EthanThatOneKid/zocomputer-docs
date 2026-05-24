
Look up Slack workspaces, channels, and members.

When called from a Slack conversation, the tool description includes the current channel\_id, thread\_id, and team\_id. These are used as defaults when not specified.

## Parameters

<ParamField type="string">
  What to list: "workspaces", "channels", or "members" (default "channels").
</ParamField>

<ParamField type="string">
  Slack workspace team ID. Required for channels/members unless the current conversation is in a workspace (then it defaults to that workspace).
</ParamField>

<ParamField type="number">
  Max results per page (default 100 for channels/members, max 200).
</ParamField>

<ParamField type="string">
  Pagination cursor from a previous response's next\_cursor.
</ParamField>
