
The only way for Zo to act on sites that need you signed in

Zo has a real Chromium browser running on your computer. You sign into sites in that browser once, and from then on Zo can act on those sites as you: read your feed, click through your dashboard, post a draft, pull a number out of an admin panel, anything you'd otherwise do yourself.

To open it, go to **Settings → Integrations** and click **Open Zo's browser**. The browser pops up in its own tab. Navigate, sign in, and close it. The session sticks.

## Why you'd use it

The browser is Zo's universal fallback. Most of the time, Zo has a faster, cleaner way to do what you're asking, and you should reach for those first when they exist. The browser is for everything else: services that don't have an integration, don't ship a CLI, don't expose an API, and just live behind a sign-in page on the open web. That's the long tail of the web. Niche SaaS, internal tools, customer portals, partner dashboards, vendor admin panels, anywhere you'd normally open a tab and do it yourself.

What the browser unlocks for Zo:

| Capability                          | What it covers                                                                                                                                                                           |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Reach the long tail of services** | The single biggest reason the browser exists. If a tool is too small or too internal to have a Zo integration or a public API, the browser is the only way Zo can use it on your behalf. |
| **Read what's behind a sign-in**    | Your X feed, your Linear inbox, your private dashboards, your usage analytics, your bank, your CMS drafts. Anything that would 302 a logged-out visitor to a sign-in page.               |
| **Act as you on a site**            | Post a tweet, send a message, publish a draft, change a setting, place an order, mark something done. Any click you'd make, Zo can make.                                                 |

If you find yourself copy-pasting from a logged-in tab into Zo, that's the moment to give Zo the browser instead.

## When to use it

The browser is heavier than Zo's other ways of reaching the web. It loads a real page, runs JavaScript, and uses your session, so it's worth it only when nothing lighter will do. The rough hierarchy:

| Reach for                     | When                                                                    |
| ----------------------------- | ----------------------------------------------------------------------- |
| An integration                | Zo has one for the service (Gmail, Linear, Slack, Notion, Stripe, etc.) |
| A [skill](/skills)            | The work is a known, packaged workflow                                  |
| A CLI or API                  | The service ships a tool Zo can run, or an endpoint it can call         |
| A [web tool](/tools-overview) | The page is publicly readable (read-webpage, web-search, web-research)  |
| The browser                   | None of the above exist for the site you're trying to use               |

A good rule of thumb: if you could share the URL with someone who isn't signed in and they'd see the same thing, use a [web tool](/tools-overview). If a service has its own integration or CLI, use that. The browser is the answer when you'd otherwise just open the tab yourself.

## Authenticated sites

Once you've signed into a site, it shows up in **Settings → Integrations** as an authenticated site. That list also tells Zo which sites it has access to as you, so when you ask it to "check my Substack stats" it knows it can.

You don't have to mention "browser" in your prompts. Zo picks the browser tool on its own when a request points at a site it's signed into. If you want to be explicit, say "in the browser..." or "open Substack and..."

<Warning>
  The browser keeps live cookies for every site you sign into. Anything Zo can do as you in chat, it can also do as you on those sites: read messages, post, send, buy, change settings. Only sign into accounts you're comfortable having Zo act on. If you want Zo to read a site but not take actions on it, run that work through a [persona](/personas) with a limited tool set.
</Warning>

## How sessions behave

Sessions persist the same way they do in your own browser. You sign in once, and Zo stays signed in until the site logs you out, expires the session, or you sign out from inside Zo's browser.

| Scenario              | What happens                                                                                                                                              |
| --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Two-factor auth**   | You'll go through 2FA the first time you sign in. After that, the session is good until the site challenges you again.                                    |
| **Magic links**       | If a site emails a sign-in link, open it from inside Zo's browser, not your laptop's, so the session lands in the right place.                            |
| **Multiple accounts** | If you need both a personal and a work account on the same site, sign one of them in through a [persona](/personas) so Zo can keep the contexts separate. |

## When Zo gets stuck

Live sites change layout, throw popups, and log you out. A few things that usually unblock Zo:

| Symptom                             | What to do                                                                                                                                            |
| ----------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Layout drift on a familiar page** | Ask Zo to take a screenshot and tell you what it sees. From there you can tell it where to click.                                                     |
| **Logged out without warning**      | Open Zo's browser, sign back in, and ask Zo to retry the original request.                                                                            |
| **2FA prompt mid-task**             | Open the browser, complete the prompt, and tell Zo to keep going. It'll pick up where it left off.                                                    |
| **Site looks different than yours** | Zo's browser is a separate session from a different IP. Some sites serve different layouts. Ask Zo to describe what it sees before you debug further. |
