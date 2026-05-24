
Run any long-running program on your Zo

A **service** is a long-running program on your Zo: a custom web server, a database for your other services to talk to, a Discord bot, a sync loop, or any process you want kept running in the background. Services are the most flexible [hosting option](/hosting) on your Zo. They run inside your Zo's Linux sandbox, so anything that runs on Linux can run here (with some exceptions).

To set up or manage a service, just ask Zo. You can also open the <Icon icon="globe" /> **Sites** page and go to the **Services** tab to see what's running.

<Tip>
  Not sure which mode or hosting option fits your use case? Just ask Zo. Describe what you're trying to run and Zo can recommend the best fit.
</Tip>

## Why register a service?

You can always start a process by hand in a terminal, but your Zo restarts periodically to pick up updates and snapshots, and that happens even on paid plans. A process you started yourself won't come back after a restart. When you register a service, Zo brings it back up automatically with the same config every time your Zo starts. That's the difference between something that runs and something that stays running.

## What people run as services

A few examples of what fits well as a service:

* A custom backend in Node, Python, Go, Ruby, Rust, or anything else that runs on Linux
* A database like Postgres or Redis that another service on your Zo talks to
* A Discord or Telegram bot
* A scheduled worker or background sync loop
* A WebSocket server

If you only need a quick page or API, [Space](/spaces) is simpler. If you want a full website project that integrates with your workspace files, [Sites](/sites) is the better fit.

## The three modes

Every service runs in one of three modes. The mode determines whether the service has a public endpoint and how traffic reaches it.

### <Icon icon="globe" /> `http`

A web service. Public by default at `*.zocomputer.io` with no built-in auth. Use this for any HTTP server, API, or website.

You can also set an HTTP service to **private**, in which case it lives at `*.zo.computer` and requires you to sign in.

### <Icon icon="cable" /> `tcp`

A non-HTTP service exposed at a public host and port. Use this for things that don't speak HTTP, like a custom socket protocol, a game server, or an MQTT broker.

<Warning>
  TCP services are always public, with no auth in front of them. Anything you put behind a TCP service should handle its own authentication. Don't expose a database directly over TCP unless it has strong auth turned on.
</Warning>

### <Icon icon="cog" /> `process`

A managed background process with no public endpoint. Zo starts it, keeps it running, and restarts it if you change its config. Use this for anything that doesn't need to be reached from outside your Zo: a worker, a scheduler, a bot, a sync loop, or an internal-only service bound to localhost (like a Postgres on `127.0.0.1` that your HTTP service connects to).

<Tip>
  Process services don't count toward your hosted-service limits, so reach for this mode whenever a public endpoint isn't needed.
</Tip>

## Settings

When you set up a service, Zo only needs a handful of settings:

| Setting               | What it is                                                                                                                                                                              |
| --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Label                 | A unique name for the service (lowercase and hyphens), e.g. `my-web-app`.                                                                                                               |
| Mode                  | `http`, `tcp`, or `process`.                                                                                                                                                            |
| Local port            | The port your service listens on. Required for `http` and `tcp`. Zo injects this as the `PORT` env var.                                                                                 |
| Entrypoint            | The command to start your service, e.g. `bun run start` or `python3 app.py`. Optional. If omitted, Zo manages only the tunnel and you're responsible for starting the process yourself. |
| Working directory     | The folder where the entrypoint runs. Defaults to `/home/workspace`.                                                                                                                    |
| Environment variables | Any extra config your service needs.                                                                                                                                                    |

A handful of port numbers are reserved for system use; if you pick one, Zo will let you know.

## URLs

When you create a public HTTP service, you get **two** URLs:

* The **HTTP Proxy URL** is the right pick for most web services like APIs and websites.
* The **Direct Tunnel URL** is for non-web traffic, or as a fallback if the HTTP Proxy URL doesn't behave as expected.

TCP services get a Direct Tunnel URL with a public host and port. Process services get no public URL.

## Custom domains

You can attach a [custom domain](/custom-domains) to any public service, so your URL looks like `app.example.com` instead of `myapp-yourhandle.zocomputer.io`. Custom domains are available on paid plans.

## Status and troubleshooting

Open the **Services** tab on the <Icon icon="globe" /> **Sites** page to see what's running. If something's stuck or crashing, ask Zo to take a look. It can diagnose the service, fix the underlying issue, and restart it for you.

## Where Services fit

If a [Site](/sites) or [Space](/spaces) covers what you need, those are simpler choices. Reach for Services when you want full control over the runtime, or when you need something Sites and Space don't offer: a database, a bot, a custom protocol, or a long-running worker.
