
Get message history from a Discord channel, thread, or DM.

When called from a Discord conversation, the tool description includes the current channel\_id, thread\_id, and guild\_id. These are used as defaults when not specified.

## Parameters

<ParamField type="string">
  Discord channel, thread, or DM ID to read from. Omit to use the current conversation's channel/thread.
</ParamField>

<ParamField type="string">
  Message ID — fetch messages around this message. Mutually exclusive with before/after.
</ParamField>

<ParamField type="string">
  Message ID — fetch messages older than this. Mutually exclusive with around/after.
</ParamField>

<ParamField type="string">
  Message ID — fetch messages newer than this. Mutually exclusive with around/before.
</ParamField>

<ParamField type="number">
  Number of messages to return (1–100, default 50).
</ParamField>
