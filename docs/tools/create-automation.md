
Create an automation to run an AI task on a schedule.

Automations run on a schedule with an instruction. The automation runs the instruction at the scheduled time. The automation runner is Zo (another instance of yourself, with all the same tools, running on the same computer). Keep this in mind when writing the instruction: it should be specific, detailed, reference specific files, directories, and tools, and include all the context, examples, and nudges needed to give it the best chance of successfully completing the task. delivery\_method is the user's preferred communication channel for messages about the run; it does not force every run to send a message.

## Parameters

<ParamField type="string">
  RFC 5545 RRULE string (bare RRULE without DTSTART or TZID — system adds these automatically)
</ParamField>

<ParamField type="string">
  Clear, actionable instruction to execute when the automation triggers (include all necessary context)
</ParamField>

<ParamField type="string">
  Optional preferred communication channel: one of 'email', 'sms', 'telegram', 'slack', 'discord', or None
</ParamField>

<ParamField type="string">
  Optional model ID. Call tool\_docs('create\_automation') or tool\_docs('edit\_automation') to see available model IDs. User-specific BYOK model IDs in the format 'byok:your\_config\_id' are also accepted.
</ParamField>
