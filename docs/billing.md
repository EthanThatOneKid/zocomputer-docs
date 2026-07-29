
Plans, AI credits, and how billing works

Zo's [pricing](https://zo.computer/pricing) covers two things: your cloud computer (CPU, memory, storage, services) and the AI you use to drive it. The plan you pick mostly changes how much computer you get and how much built-in AI usage comes with it.

<Tip>
  Not sure which plan fits? The [Zo plan
  guide](https://www.zo.computer/blog/which-zo-plan-is-right-for-you) walks
  through who each tier is built for.
</Tip>

## Plans at a glance

| Plan      | Price    | AI credits                                          | Improved memory | Hosted services | Compute                      |
| --------- | -------- | --------------------------------------------------- | --------------- | --------------- | ---------------------------- |
| **Free**  | \$0      | Daily free-model usage; premium models with Credits | Not included    | 1               | Limited, sleeps when idle    |
| **Basic** | \$18/mo  | \$10/mo included                                    | Included        | 5               | Always-on, 4 CPU / 32 GB RAM |
| **Pro**   | \$64/mo  | \$40/mo included                                    | Included        | 10              | 16 CPU / 128 GB RAM          |
| **Ultra** | \$200/mo | \$100/mo included                                   | Included        | 50              | 64 CPU / 512 GB RAM          |

All plans include 100 GB of cloud storage, access to the [Zo MCP Server](/mcp-server), and [bringing your own API keys](/byok). Monthly paid plans add always-on compute, higher limits, included monthly AI credits, and connections for [coding agents](/claude-code) like Claude Code, Codex, and Gemini.

## Your computer

On the [free plan](https://zo.computer/pricing):

* Your computer goes to sleep when idle. When you start Zo, you may see the boot screen.
* You'll get plenty of free storage, but limited CPU, memory, and [hosted services](/services).
* Hosted services include public websites and custom self-hosted services. They're not reachable while your computer is asleep.
* [Private sites](/sites) on your Space don't count against your service limit.

Paid plans keep your computer always-on, so [services](/services), [sites](/sites), and [automations](/automations) stay reachable around the clock.

## Your AI

Every plan includes Zo's built-in AI models. Free has two media-billing states:

* Without a positive Credits balance, Free includes daily allowances for basic chat and eligible image, video, and transcription requests.
* With a positive Credits balance, Free stays \$0/month and uses metered billing for built-in media models. A payment method lets you buy Credits or enable auto top-up; it does not replace Credits. Free resource limits still apply, and the computer can still sleep.

Chat usage follows the listed token rates. Media generation and transcription use fixed prices, and a model can have a different price for each supported request shape. On Free accounts, a positive Credits balance takes precedence and uses metered billing. Without positive Credits, only eligible media shapes consume the matching daily allowance: 3 image requests, 1 video request, and 1 transcription per workspace. Speech generation is paid-only when available.

Zo records a paid media charge only after it validates and stores the result in your workspace. Failed or cancelled work that never produces a stored result isn't charged. A free allowance is consumed when Zo admits the request and is not restored automatically if generation later fails. Monthly plans include credits up front and higher computer limits, but they are not the only way to use premium models.

Paid media currently requires exactly one active workspace subscription on the billing account to carry Zo's media rate. If more than one does, Zo blocks paid media rather than risk duplicate charges. Eligible daily free requests remain available without a positive Credits balance.

<Tip>
  If you already pay for Claude, ChatGPT, or Gemini, you can [bring your own API
  keys](/byok) on any plan and skip Zo-billed model usage for those providers.
</Tip>

## Changing plans

Open **Settings → Billing** to upgrade, downgrade, or cancel. Plan changes take effect immediately, and any unused portion of your current period is prorated.
