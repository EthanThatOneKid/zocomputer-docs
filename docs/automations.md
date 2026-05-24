
Let Zo do the work while you're not at the keyboard

An **automation** is Zo running a prompt on a schedule. Same Zo, same files, same [tools](/tools), same integrations, just running on its own when you're not in the conversation. If you can ask Zo to do something in chat, you can ask it to do that thing every morning, every Friday afternoon, or on any cadence you describe.

To create one, just ask Zo: "every weekday at 8am, summarize my calendar and email it to me." Zo reads that as a schedule, writes the prompt, and confirms before saving. You can also open the <Icon icon="clock" /> **Automations** tab and hit `+` to set one up by hand.

## Good fits for an automation

The best automations have two things in common: they want fresh context every time they run, and they save you from having to remember to ask. Some patterns that work well:

| Pattern                    | What it does                                                                                                                     |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| **Morning briefings**      | A single message that pulls together your day before you open your laptop: calendar, unread email, overnight Slack, custom news. |
| **Inbox-to-action triage** | Read incoming messages on a schedule and only ping you for the ones that need attention, with a draft attached.                  |
| **Page watchers**          | Check a URL on a schedule and only message you when something has changed: a status page, a stock level, a price, a release.     |
| **Routine reports**        | Query a data file or service, format the result, and post it where it belongs (file, email, Slack channel).                      |
| **Habit nudges**           | Text yourself a prompt for the habit you're building, conditionally so the nudge doesn't feel robotic.                           |
| **Follow-up drafts**       | Use your calendar and history to draft messages after meetings or events, before they pile up.                                   |

Example prompts you can copy and adapt:

```text Morning briefing theme={null}
Every weekday at 7:30am, look at my calendar for today, scan for VIP emails since 5pm yesterday, pull the top three Hacker News threads about AI, and email me a one-page brief.
```

```text Page watcher theme={null}
Every 15 minutes, check the status page at status.example.com. If anything goes from green, text me the affected services and the start time.
```

```text Routine report theme={null}
Every Friday at 4pm, query my Stripe export for the week's revenue, generate a one-page report in reports/, and post a three-line summary in #finance on Slack.
```

If you'd write the same prompt in chat more than twice a month, it probably wants to be an automation.

## Schedules

Tell Zo when to run in plain English and it'll parse the cadence:

* "once, tomorrow at 6pm"
* "every weekday at 8am"
* "every hour"
* "the first Monday of every month at 9am"
* "every 15 minutes" (for short polls)

You can edit the schedule later from the automation's row in the <Icon icon="clock" /> **Automations** tab, or just ask Zo to change it.

## Delivery and notifications

By default, an automation runs quietly and writes its result to chat history. You decide how, and whether, it reaches you:

| Delivery                                                    | When to use it                                                                                                |
| ----------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **Email**, **SMS**, **Telegram**, **Discord**, or **Slack** | Active pings you actually want to see.                                                                        |
| **No notification**                                         | Jobs that maintain state without bothering you: refresh a data export, save a daily snapshot, index a folder. |

Often the most useful pattern is **conditional notifications**. Ask Zo to ping you only when something is true, and the automation becomes a filter instead of another inbox:

* "Text me only if the deploy failed."
* "Email me the digest only if there are unread VIP messages."
* "DM me only when the price drops below \$400."

<Tip>
  If an automation should run the same multi-step routine every time, capture the steps as a [skill](/skills) and have the automation invoke the skill. That way you can also run it on demand from chat, and the prompt stays in one place.
</Tip>

## Reviewing what ran

Every automation run is a real Zo conversation, saved to your chat history. Open the <Icon icon="clock" /> **Automations** tab, click any task, and you'll see each past run, the prompt it executed, the tools it used, and the output. If a run misfires, ask Zo to look at it: "open last night's run of my morning brief and tell me why the calendar section was empty." Zo can debug the run and fix the schedule or the prompt.

## What to keep in mind

|            |                                                                                                                                                                                                                     |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Cost**   | Automations spend AI credits the same way chat does. A 5-minute schedule adds up. Use long intervals where you can, and reach for conditional notifications to avoid generating expensive output you'll never read. |
| **Access** | Automations run with the same access as your chats: files, messages, every connected integration. Use a [persona](/personas) with a narrow tool set if you want to scope what an automation can do.                 |
