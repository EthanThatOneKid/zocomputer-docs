
Edit an existing automation's title, instruction, schedule, preferred communication channel, or model.

Automations run on a schedule with an instruction. The automation runs the instruction at the scheduled time. The automation runner is Zo (another instance of yourself, with all the same tools, running on the same computer). Keep this in mind when writing the instruction: it should be specific, detailed, reference specific files, directories, and tools, and include all the context, examples, and nudges needed to give it the best chance of successfully completing the task. delivery\_method is the user's preferred communication channel for messages about the run; it does not force every run to send a message.

## Parameters

<ParamField type="string">
  The unique identifier of the automation to modify
</ParamField>

<ParamField type="string">
  Optional. New display title for the automation. Omit to keep unchanged.
</ParamField>

<ParamField type="string">
  Optional. The new instruction text to replace the existing one. Omit to keep unchanged.
</ParamField>

<ParamField type="string">
  Optional. New RFC 5545 RRULE string (bare RRULE without DTSTART or TZID — system adds these automatically). Omit to keep unchanged.
</ParamField>

<ParamField type="string">
  Optional preferred communication channel. 'email', 'sms', 'telegram', 'slack', 'discord', or 'none' to clear. Omit to keep unchanged.
</ParamField>

<ParamField type="string">
  Optional model ID. Call tool\_docs('create\_automation') or tool\_docs('edit\_automation') to see available model IDs. User-specific BYOK model IDs in the format 'byok:your\_config\_id' are also accepted.
</ParamField>

<ParamField type="string">
  Optional. True to resume a paused task, False to pause it. Omit to keep unchanged.
</ParamField>
