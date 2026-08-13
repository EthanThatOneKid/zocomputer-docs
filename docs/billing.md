
Plans, AI credits, and how billing works

Zo's [pricing](https://zo.computer/pricing) covers two things: your cloud computer (CPU, memory, storage, services) and the AI you use to drive it. The plan you pick mostly changes how much computer you get and how much built-in AI usage comes with it.

<Tip>
  Not sure which plan fits? The [Zo plan
  guide](https://www.zo.computer/blog/which-zo-plan-is-right-for-you) walks
  through who each tier is built for.
</Tip>

## Plans at a glance

| Plan      | Price    | AI credits                                        | Improved memory | Hosted services | Compute                      |
| --------- | -------- | ------------------------------------------------- | --------------- | --------------- | ---------------------------- |
| **Free**  | \$0      | 14-day free AI trial; premium models with Credits | Not included    | 1 during trial  | 14-day trial; recovery only  |
| **Basic** | \$18/mo  | \$10/mo included                                  | Included        | 5               | Always-on, 4 CPU / 32 GB RAM |
| **Pro**   | \$64/mo  | \$40/mo included                                  | Included        | 10              | 16 CPU / 128 GB RAM          |
| **Ultra** | \$200/mo | \$100/mo included                                 | Included        | 50              | 64 CPU / 512 GB RAM          |

All plans include 100 GB of cloud storage, access to the [Zo MCP Server](/mcp-server), and [bringing your own API keys](/byok). Monthly paid plans add always-on compute, higher limits, included monthly AI credits, and connections for [coding agents](/claude-code) like Claude Code, Codex, and Gemini.

## Your computer

During the Free plan's 14-day computer trial:

* Your computer goes to sleep when idle. When you start Zo, you may see the boot screen.
* You'll get plenty of free storage, but limited CPU, memory, and [hosted services](/services).
* Hosted services include public websites and custom self-hosted services. They're not reachable while your computer is asleep.
* [Private sites](/sites) on your Space don't count against your service limit.

After 14 days, Zo does not start or renew the ordinary Free computer. A computer that is already running stays available until its current timeout. Sites and Services are unavailable while the computer is stopped, but your files remain stored and retrievable. The workspace owner can start up to seven one-hour recovery sessions to download workspace data. If you cannot retrieve the files through those sessions, email `help@zocomputer.com` and support can prepare a ZIP archive of the workspace files. Upgrade to a paid plan to restore ordinary computer access. Credits and connected AI providers do not extend computer access.

Paid plans keep your computer always-on, so [services](/services), [sites](/sites), and [automations](/automations) stay reachable around the clock.

## Your AI

Every plan includes Zo's built-in AI models.

On the Free plan, Zo-funded chat includes 14 days of limited AI usage from the time your workspace is created.

When you reach a limit, the app shows whether more trial usage will become available and links to your plan options. After 14 days, Zo-funded chat ends. Sites and Services stop when the computer stops, but your files remain retrievable through recovery sessions or a support-prepared ZIP archive. Credits or [your own API keys](/byok) can fund AI while a full computer is running, but only a paid plan restores ordinary computer access after it stops. A positive Credits balance uses metered billing before the trial allowance.

Image, video, and transcription requests are separate from the chat trial. Free has two media-billing states:

* Without a positive Credits balance, Free includes daily allowances for eligible image, video, and transcription requests.
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
