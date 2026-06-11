
Use Zo from Discord, Slack, Telegram, SMS, and email

You can talk to Zo from Discord, Slack, Telegram, SMS, or email. Zo has the same capabilities everywhere — your full workspace, all your connected integrations, code execution, web search, image generation, everything. Conversations from messaging apps also appear in the zo.computer web app under your conversation history.

Connect channels in **Settings > Channels** on zo.computer.

## Commands

These commands work across Discord, Slack, Telegram, and SMS:

* `/new` — start a new conversation
* `/conversations` — list and switch between recent conversations
* `/status` — show current conversation info (called `/info` in Slack)
* `/model [name]` — show or switch the active AI model
* `/persona [name]` — show or switch the active persona
* `/help` — show available commands

Model and persona choices are saved separately for each messaging app (e.g. your Discord model won't affect your Slack model).

## Conversations

Each DM, thread, or group has its own conversation history.

* **Discord**: each DM and each channel thread is its own conversation. @mentions in channels auto-create a thread.
* **Slack**: each DM and each thread is its own conversation.
* **Telegram**: each DM or group chat is its own conversation.
* **SMS**: your text thread is a single ongoing conversation. Zo periodically starts a fresh conversation with a summary of the previous one.
* **Email**: each email to **<Handle />@zo.computer** starts a new conversation (find your Zo email address in **Settings > Channels**).

Use `/new` to start fresh. Use `/conversations` to switch between recent conversations.

## Groups and channels

In group contexts (Discord channels, Slack channels, Telegram groups), Zo works differently than in DMs:

* **Zo only responds to you.** Even in a shared channel, Zo runs on your workspace and uses your integrations. Other people in the channel can @mention Zo too, but it runs on their own workspace.
* **Zo prefixes its messages** with `[yourhandle.zo.computer]` in group contexts so it's clear which workspace is responding.
* **Zo doesn't respond to every message.** It only responds when @mentioned (or replied to, on Telegram). In DMs, Zo responds to everything.
* **Zo can see recent context.** On Discord and Slack, recent messages from the channel or thread are included as context above your message.

## Discord

DM the Zo bot, @mention Zo in any channel (creates a thread), or use the **/zo** slash command.

* @mentions in channels automatically create a thread for the conversation
* Discord has a 2000-character message limit — long responses are automatically split

## Slack

DM the Zo bot, @mention Zo in any channel or thread, or open the **assistant pane**.

* Zo can send file attachments (images, documents) in messages
* The assistant pane provides a dedicated sidebar for Zo conversations

## Telegram

Message the Zo bot directly, or @mention Zo in group chats (bot must be a group admin).

* Zo can send media files (images, documents) in messages

## SMS

Text your Zo number directly.

* Zo keeps responses under 150 words
* Zo can send MMS media (images, files)
* Zo can text your registered contacts by name

## Email

Email **<Handle />@zo.computer** to start a conversation. No setup required — your Zo address works out of the box.

This is a conversational interface, not an inbox. Emails to your Zo address start conversations; they aren't stored as mail. For reading your inbox or sending as you, connect Gmail or Outlook in **Plugins > Integrations** on zo.computer.
