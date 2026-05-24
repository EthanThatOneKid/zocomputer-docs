
Pick between Space, Sites, Services, and zo.pub

Your Zo is a personal server, so there's more than one way to put things online from it. Each option is built for a different kind of thing. This page is the map.

## At a glance

| You want to...                                                 | Use                   | URL pattern                                             |
| -------------------------------------------------------------- | --------------------- | ------------------------------------------------------- |
| Add a page, API, or widget at a single stable domain           | [Space](/spaces)      | `yourhandle.zo.space`                                   |
| Build a full website project that lives in a folder on your Zo | [Sites](/sites)       | `sitename-yourhandle.zocomputer.io`                     |
| Run a long-running program (server, database, bot, worker)     | [Services](/services) | `*.zocomputer.io` (public) or `*.zo.computer` (private) |
| Share a folder of files with a link                            | [zo.pub](/zo-pub)     | `zo.pub/<your-handle>/...`                              |

## <Icon icon="orbit" /> Space

Every Zo user gets one personal domain at `yourhandle.zo.space`. Space is for quick, focused creations that live at a stable URL: a landing page, a tip calculator, a webhook endpoint, a small React widget. There's no project to set up. Just ask Zo to "make my zo.space home page a personal landing page" or "create an API at /api/data on my zo.space" and it's live.

Pages on your Space are private by default (only you can see them when logged in), but you can make them public. APIs are always public, and uploaded assets are always publicly accessible.

<Tip>
  Reach for Space when you have one small thing in mind and you don't want to think about folders, frameworks, or deploys.
</Tip>

## <Icon icon="zap" /> Sites

A Site is a full website project that lives as a folder on your Zo. It's built on [Hono](https://hono.dev) and [Bun](https://bun.sh), and if you ask for a database it'll use [SQLite](https://www.sqlite.org) by default. Because the site lives on your personal server, it can read and write files in your workspace, save form responses to a database next to your other files, and pull in any folder you mention while chatting with Zo.

Sites are private by default. Only you can open the URL while signed in to your Zo. When you click **Publish**, the site becomes a public [service](/services) at `sitename-yourhandle.zocomputer.io`.

<Tip>
  Reach for Sites when you want a real project you'll keep evolving, or when the site needs to integrate with your files, your AI, or a database.
</Tip>

## <Icon icon="square-terminal" /> Services

A service is a long-running process on your Zo: any program that listens on a port or runs in the background. Services give you the most flexibility, because you can run anything Sites doesn't cover, in any technology you want. To set one up, you only need a port, an entrypoint, and a working directory. Open the **Sites** page and go to the **Services** tab to see what's running.

Services have three modes:

* **`http`** is a web service. It's public by default at `*.zocomputer.io` with no auth. You can also set it private, in which case it lives at `*.zo.computer` and requires you to sign in.
* **`tcp`** is a non-HTTP service exposed at a host and port. TCP services are always public.
* **`process`** is a supervised background process with no public endpoint. Use it for workers, schedulers, bots, sync loops, or internal-only services bound to localhost (like a Postgres on `127.0.0.1`). Process services don't count toward your hosted-service limit.

You can also point a [custom domain](/custom-domains) at any public service or published site.

<Tip>
  Reach for Services when you need a custom server, a database engine, a long-running worker, or anything where you care about the runtime, not just the code.
</Tip>

## <Icon icon="share-2" /> zo.pub

`zo.pub/<your-handle>` is your public namespace for sharing files. Ask Zo to "publish this folder to zo.pub" and you'll get back a link anyone can open. Visitors don't need a Zo account; they land on a clean listing page and can browse the folder, click any file to view or download it, and grab the whole folder as a zip or tar archive.

zo.pub is for sharing, not for running. There's no private mode and no password protection. Anything you publish is fully public.

<Warning>
  Good things to publish to zo.pub: photos, data exports, portfolio PDFs, meeting recordings, static reports, anything you'd otherwise email as a download link. If you need code, auth, or per-user logic, use [Sites](/sites) or [Services](/services) instead.
</Warning>

## Quick decision rule

* One page, one API, or one small widget, use [Space](/spaces).
* A website project you'll keep building on, use [Sites](/sites).
* A long-running custom process, a database, or anything Sites doesn't cover, register a [Service](/services).
* A folder of files for someone to download, publish to [zo.pub](/zo-pub).

If you want a branded URL on top of any public site or service, attach a [custom domain](/custom-domains).
