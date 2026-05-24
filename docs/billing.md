
Plans, AI credits, and how billing works

Zo's [pricing](https://zo.computer/pricing) covers two things: your cloud computer (CPU, memory, storage, services) and the AI you use to drive it. The plan you pick mostly changes how much computer you get and how much built-in AI usage comes with it.

<Tip>
  Not sure which plan fits? The [Zo plan guide](https://www.zo.computer/blog/which-zo-plan-is-right-for-you) walks through who each tier is built for.
</Tip>

## Plans at a glance

| Plan      | Price    | AI credits                                                   | Hosted services | Compute                      |
| --------- | -------- | ------------------------------------------------------------ | --------------- | ---------------------------- |
| **Free**  | \$0      | Daily free-model usage; premium models with a payment method | 1               | Limited, sleeps when idle    |
| **Basic** | \$18/mo  | \$10/mo included                                             | 5               | Always-on, 4 CPU / 32 GB RAM |
| **Pro**   | \$64/mo  | \$40/mo included                                             | 10              | 16 CPU / 128 GB RAM          |
| **Ultra** | \$200/mo | \$100/mo included                                            | 50              | 64 CPU / 512 GB RAM          |

All plans include 100 GB of cloud storage, access to the [Zo MCP Server](/mcp-server), and [bringing your own API keys](/byok). Monthly paid plans add always-on compute, higher limits, included monthly AI credits, and connections for [coding agents](/claude-code) like Claude Code, Codex, and Gemini.

## Your computer

On the [free plan](https://zo.computer/pricing):

* Your computer goes to sleep when idle. When you start Zo, you may see the boot screen.
* You'll get plenty of free storage, but limited CPU, memory, and [hosted services](/services).
* Hosted services include public websites and custom self-hosted services. They're not reachable while your computer is asleep.
* [Private sites](/sites) on your Space don't count against your service limit.

Paid plans keep your computer always-on, so [services](/services), [sites](/sites), and [automations](/automations) stay reachable around the clock.

## Your AI

Every plan includes Zo's built-in AI models. Free has two states:

* Without a payment method, Free includes free models with the current daily usage allowance.
* With a working payment method, Free stays \$0/month and can use premium built-in models on pay as you go. Free resource limits still apply, and the computer can still sleep.

Premium built-in AI usage is charged at-cost, using the same rates we pay our underlying AI model providers. Zo uses any applicable free allowance first, then applies AI credits before charging your payment method. Monthly plans include credits up front and higher computer limits, but they are not the only way to use premium models.

<Tip>
  If you already pay for Claude, ChatGPT, or Gemini, you can [bring your own API keys](/byok) on any plan and skip Zo-billed model usage for those providers.
</Tip>

## Changing plans

Open **Settings → Billing** to upgrade, downgrade, or cancel. Plan changes take effect immediately, and any unused portion of your current period is prorated.
