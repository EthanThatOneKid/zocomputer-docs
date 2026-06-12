
Keeping you and your data safe is important to us.

Zo Computer gives your AI full access to a dedicated computer in the cloud, where it can:

* Access the internet and download files and programs
* Write code, run programs, and host web services
* Control other devices you connect to your Zo Computer

Giving AI unconstrained access to a dedicated cloud computer is a powerful paradigm. Our approach is safer than giving AI full access to your own computer or your browser – but it is not without risks.

This document explains the security characteristics of Zo Computer and helps users and organizations make an educated risk assessment.

For any security-related questions or reports of potential vulnerabilities, email [security@zocomputer.com](mailto:security@zocomputer.com).

Zo Computer has been designed from first principles to (1) give users full custody over their files and applications, and (2) provide a more transparent and flexible experience when using a powerful AI agent.

* All files are stored using non-proprietary file formats in a portable, open-source container image format. Snapshots of the user's filesystem occur regularly to ensure past data can always be recovered. The user's filesystem data can be provided in container image format if requested.
* Whenever possible, services are hosted on the user's personal server. This includes the Zo application itself, sites created by Zo, and software installed by the user or Zo. Our unique decentralized approach enables fundamentally better data custody and portability. Our long-term vision is to enable running Zo on any machine.
* As much as is practical for the overall system, we aim to store all AI memories and search indexes personal server using open-weight embedding models and open-source software. Our vision is to enable running all AI inference and agent tools on the user's personal server.

## Our service providers.

Zo Computer currently uses the following infrastructure and service providers:

* `Infrastructure`
  * [Modal](https://modal.com/docs/guide/security) `Data storage` Modal provides cloud compute.
  * [Daytona](https://www.daytona.io/docs/en/security-exhibit) `Data storage` Daytona provides cloud compute.
  * [Neon](https://neon.tech) `Data storage` Neon hosts PostgreSQL databases used internally by the Zo application.
  * [Upstash](https://upstash.com) `Data storage` Upstash hosts Redis databases used internally by the Zo application.
  * [Cloudflare](https://cloudflare.com) `No data access` Cloudflare authenticates and routes traffic to internal services and the user's personal server. No data is retained.
  * [Vercel](https://vercel.com) `No data access` Vercel is used as a gateway for accessing open-source and proprietary LLM inference. Vercel hosts the non-application website (`www.zo.computer`).
* `AI inference`
  * [OpenAI](https://openai.com) `Partial data access` OpenAI's proprietary models are used for LLM inference and audio transcription.
  * [Anthropic](https://anthropic.com) `Partial data access` Anthropic's proprietary models are used for LLM inference.
  * [Google Cloud Vertex AI](https://cloud.google.com/vertex-ai) `Partial data access` Google's proprietary models are used for LLM inference.
  * [Fireworks](https://fireworks.ai) `Partial data access` Open-source models such as DeepSeek, Kimi, and GLM, which are trained in China, may be served from Fireworks's US-based servers (via the Vercel AI gateway) when selected by the user for LLM inference.
  * [AssemblyAI](https://assemblyai.com) `No data access` AssemblyAI's proprietary models are used for transcribing audio.
  * [FAL](https://fal.ai) `No data access` Open-source and proprietary models served on FAL are used for generative AI media inference.
* `Agent tools`
  * [Tavily](https://tavily.com) `No data access` When Zo searches the web, Tavily may be used to provide search results.
  * [Steel](https://steel.dev) `No data access` When Zo operates a web browser, Steel provides the underlying browser infrastructure.
  * [Pipedream](https://pipedream.com) `No data access` When you connect Zo to external services like Google Calendar, Google Tasks, Google Drive, or Dropbox, Pipedream facilitates the connection.
* `Internal systems`
  * [Sentry](https://sentry.io) `No data access` Sentry is used to report system errors.
  * [Logfire](https://pydantic.dev/logfire) `No data access` Logfire is used to trace system performance.
  * [Posthog](https://posthog.com) `No data access` PostHog collects analytics on usage and pageviews.
  * [Postmark](https://postmark.com) `No data access` All email processing and delivery is handled by Postmark. Postmark has a 45-day retention period for email address, header, and diagnostic information but does not retain the email contents.
  * [Telnyx](https://telnyx.com) `No data access` All SMS/MMS processing and delivery is handled by Telnyx. Telnyx has a 10-day retention period for messages.
  * [Stripe](https://stripe.com) `No data access` All billing is handled through Stripe. Stripe stores personal data (name, email address, payment information) for the purpose of facilitating payment. We do not store personal credit card information for any of our customers. Stripe is certified as “PCI Service Provider Level 1”, which is the highest level of certification in the payments industry.
  * [Google Workspace](https://google.com) `No data access` We use Google Workspace for internal communication and documents. We may communicate with you about your account over email and to help you use Zo.
  * [Discord](https://discord.com) `No data access` We use Discord to host the Zo community. We may use Discord to communicate with you about your account and to help you use Zo.

“Partial data” means snippets of files or entire files may be selected as context for AI inference requests. "Data storage" refers to the storage of user data files and data related to the user's account. "No data access" means the service provider never has access to user data files.

We have no infrastructure, service providers, or investors based in China.

## Our AI system components.

The Zo Computer AI system consists of three components:

1. `Zo Application`: The end-user application, running on the user's personal server, provides the user interface, file management, and settings. It communicates with and executes tools as requested by the Zo agent.
2. `Zo Agent`: The AI agent, hosted on Modal with additional providers listed above, handles orchestrating interactions between the user, the LLM, and tools requested by the LLM.
3. `Zo Server`: Internal services, hosted on Modal and Cloudflare with additional providers listed above, handle authentication, user accounts, agent tasks, storage, and usage tracking.

## How Zo AI works.

Users can start or continue conversations with Zo. A conversation is a sequential interaction between the user and the Zo agent, which orchestrates interactions between the user, the LLM, and tools requested by the LLM.

When a user starts a new conversation, the Zo application, running on the user's personal server, collects local contextual information such as file snippets, metadata about open files, and relevant application state. For additional context, the application may use built-in tools such as Bash commands to provide additional information. The collected context, along with the user’s prompt and conversation history, if applicable, is sent to the Zo agent and then to the LLM inference provider.

After processing, the LLM’s response is returned through the Zo agent back to the Zo application. The Zo application displays the response and takes additional actions based on the response, such as using built-in tools requested by the LLM and sending them back to the Zo agent for the next step in the agentic loop.

## We do not train AI on your data.

Zo Computer does not train models on user data or activity. Our long-term vision is to allow users to use and train their own open-weight models running on their own personal server.

## Vulnerability disclosures.

Zo Computer welcomes feedback from security researchers to help improve our security. If you believe you have discovered a vulnerability, privacy issue, exposed data, or other security issues we want to hear from you.

This policy outlines steps for reporting vulnerabilities to us, what we expect, and what you can expect from us.

This policy applies to Zo Computer and related digital assets owned, operated, or maintained by Zo Computer Company

### Out of scope

* We’re interested in prompt injection and LLM security research, please report findings to us. However, due to the inherent nature of LLMs, these vulnerabilities aren’t typically eligible for bug bounty rewards.
* Assets not related to Zo Computer, or not owned by Zo Computer Company, are out of scope.
  Vulnerabilities discovered or suspected in out-of-scope systems should be reported to the appropriate vendor or authority.

### Our Commitments

When working with us, according to this policy, you can expect us to:

* Respond to your report promptly, and work with you to understand and validate your report.
* Strive to keep you informed about the progress of a vulnerability as it is processed.
* Work to remediate discovered vulnerabilities in a timely manner, within our operational constraints.
* Extend Safe Harbor for your vulnerability research that is related to this policy.

### Our Expectations

In participating in our vulnerability disclosure program in good faith, we ask that you:

* Play by the rules, including following this policy and any other relevant agreements. If there is any inconsistency between this policy and any other applicable terms, the terms of this policy will prevail.
* Report any vulnerability you’ve discovered promptly.
* Avoid violating the privacy of others, disrupting our systems, destroying data, and/or harming user experience.
* Use only the `Official Channels` to discuss vulnerability information with us.
* Provide us a reasonable amount of time (at least 30 days from the initial report) to resolve the issue before you disclose it publicly.
* Perform testing only on in-scope systems, and respect systems and activities which are out-of-scope.
* If a vulnerability provides unintended access to data: Limit the amount of data you access to the minimum required for effectively demonstrating a Proof of Concept; and cease testing and submit a report immediately if you encounter any user data during testing, such as Personally Identifiable Information (PII) or proprietary information.
* You should only interact with test accounts you own or with explicit permission from the account holder.
* Do not engage in extortion.

### Official Channels

* Please report security issues via [security@zocomputer.com](mailto:security@zocomputer.com), providing all relevant information. The more details you provide, the easier it will be for us to triage and fix the issue.

### Safe Harbor

When conducting vulnerability research, according to this policy, we consider this research conducted under this policy to be:

* Authorized concerning any applicable anti-hacking laws, and we will not initiate or support legal action against you for accidental, good-faith violations of this policy.
* Authorized concerning any relevant anti-circumvention laws, and we will not bring a claim against you for circumvention of technology controls.
* Exempt from restrictions in our [Terms of Service](/information/terms) that would interfere with conducting security research, and we waive those restrictions on a limited basis.
* Lawful, helpful to the overall security of the Internet, and conducted in good faith.
* You are expected, as always, to comply with all applicable laws. If legal action is initiated by a third party against you and you have complied with this policy, we will take steps to make it known that your actions were conducted in compliance with this policy.

If at any time you have concerns or are uncertain whether your security research is consistent with this policy, please submit a report through one of our `Official Channels` before going any further.

Note that the Safe Harbor applies only to legal claims under the control of the organization participating in this policy, and that the policy does not bind independent third parties.
