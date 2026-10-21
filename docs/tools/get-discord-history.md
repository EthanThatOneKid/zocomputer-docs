
Get message history from a Discord channel, thread, or DM.

When called from a Discord conversation, the tool description includes the current channel\_id, thread\_id, and guild\_id. These are used as defaults when not specified.

## Parameters

**channel\_id** `string`

Discord channel, thread, or DM ID to read from. Omit to use the current conversation's channel/thread.

**around** `string`

Message ID — fetch messages around this message. Mutually exclusive with before/after.

**before** `string`

Message ID — fetch messages older than this. Mutually exclusive with around/after.

**after** `string`

Message ID — fetch messages newer than this. Mutually exclusive with around/before.

**limit** `number` (default: 50)

Number of messages to return (1–100, default 50).
