
Create websites hosted on your Zo server

Zo comes with a built-in way to create sites hosted on your Zo server. These sites can be personal apps just for you, or public sites for anyone to access. Sites are one of a few [hosting options](/hosting) on your Zo, alongside [Space](/spaces), [Services](/services), and [zo.pub](/zo-pub).

All sites can integrate with the files in your workspace. And your personal apps can even integrate with your AI.

To view and manage your sites, open the <Icon icon="globe" /> **Sites** page in your Zo. To get started creating a new site, select <Icon icon="zap" /> **Create site**, and Zo will create a new website template for you in a new folder with the lightning icon <Icon icon="zap" />. When you select the site's folder, you'll see a preview of the site.

Because your site is hosted on your **personal server** along with your other files, you can easily incorporate files from your workspace into your site. This means you can do things like:

* Save responses from a form to a database in your workspace.
* Integrate any file or folder from your workspace into your site.

All you have to do is mention the files or folders you want to incorporate as you chat with Zo.

You will get a URL to access your site that looks like this: `sitename-yourhandle.zocomputer.io`

<Tip>
  Zo sites are **private by default**. Only you can access the URL when you're
  logged in to your Zo Computer account. To make your site public, click
  "Publish".
</Tip>

You can think of a private Zo site as an **app just for you**. You can ask Zo to create **any interface you want for your computer**.

You can create as many private Zo sites as you want. When you publish a site, this creates a public [service](/services) running on your Zo.

# <Icon icon="fish" /> Learn more

You don't have to know how to code to create websites, because Zo can write the code for you. But knowing a bit about what's going on behind the scenes can help you have more productive conversations with Zo.

<Info>
  The built-in site tool is our recommended way to create websites on your Zo.
  But of course, you can use [services](/services) to run anything on your Zo,
  using any technology you want.
</Info>

Websites have two sides, the **backend** and the **frontend**.

* The **backend**, also called the **server**, is the part of your site that runs on your server.
* The **frontend**, also called the **client**, is the part of your site that runs in the browser.
  * Your backend delivers your site's frontend code to the user's browser, and the browser runs your frontend.

Zo creates a simple but powerful website template for you using [Hono](https://hono.dev), a popular minimal **web application framework**.

<AccordionGroup>
  <Accordion title="What is a web application framework?">
    A **web application framework** is a collection of building blocks that make it easy to build rich, interactive web experiences. The building blocks include:

    * A way to communicate between your frontend and backend, called an **internal API**. An API is a language for exchanging data between two systems.
    * A way to handle multiple pages on your site, called **routes**. The framework's **router** is responsible for matching incoming requests to the appropriate page.
  </Accordion>

  <Accordion title="What are the code files inside my site?">
    #### Main files

    These are the main files that you should look at if you're curious about how your site works.

    * <Icon icon="file-text" /> `CLAUDE` – Documentation used by the Zo coding agent
      when it works on your site. You can edit this file to provide additional
      guidance to the coding agent.
    * <Icon icon="file-code" /> `index.tsx` – The main code file for your site. This
      includes both the frontend and backend of your site. For simple sites, Zo will
      write all the code in a single file.
    * <Icon icon="file-json" /> `package.json` – The software packages that your
      site's backend uses are listed here.

    <Info>
      As your site grows, Zo may create additional code files for the different
      components of your site. For example, separating the frontend and backend code
      may help make your site easier for Zo to maintain.
    </Info>

    #### System files

    You can ignore these files – Zo will take care of them for you.

    * <Icon icon="file-json" /> `zosite.json` – Settings for how your site is hosted
      on your Zo server. configures your
    * <Icon icon="file-json" /> `tsconfig.json` – Your site uses the TypeScript
      programming language, and this file site's TypeScript settings.
    * <Icon icon="file-code" /> `.gitignore` – Used to ignore files that should not
      be tracked in version history.
    * <Icon icon="file-code" /> `bun.lock` – Used to "lock" the versions of software
      packages used in your site.
  </Accordion>

  <Accordion title="What else should I know about my site?">
    * [Hono](https://hono.dev) is the **web server**. When we call Hono a "server", it's not the same as a "computer server" – it's the the program that handles requests to your site.
    * [Bun](https://bun.sh) is the **runtime**, which is the environment that runs your web server's code.
    * Bun is also the **package manager**. As you add more functionality to your site's backend server, Zo may use Bun to install additional software packages.
  </Accordion>
</AccordionGroup>

## <Icon icon="database" /> What if I want a database?

If you ask Zo to create a database for your site, it will use [SQLite](https://www.sqlite.org) by default.

SQLite is a good default choice for your database because it's performant and lightweight – your database is **just a file**.

<Info>
  SQLite is our recommended choice for your site's database. But of course, you can use [services](/services) to run any
  database you want on your Zo server.

  You can also ask Zo to point your site to an externally hosted database service, such as [Convex
  or Supabase](https://www.convex.dev/compare/supabase).
</Info>

<AccordionGroup>
  <Accordion title="How do I explore my SQLite database?">
    When you click on your database file (ends with `.db`), you'll see Zo's built-in SQLite explorer. If you want to explore what's in your database or change the shape of your data, just ask Zo.
  </Accordion>

  <Accordion title="How does my site connect to SQLite?">
    When your site's backend connects to your SQLite database, it will use Bun's built-in [SQLite driver](https://bun.com/docs/api/sqlite).
  </Accordion>
</AccordionGroup>

## <Icon icon="toy-brick" /> External building blocks

There is a huge amount of high-quality **open-source software packages** that developers have built over the last two decades. As you build your site, you may see Zo installing new open-source software packages to extend the functionality of your site.

<Tip>
  A **package** is a bundle of code published on the internet that can be
  installed into your own code project. There are also many complete
  **open-source software applications**, which you can ask Zo to help you
  install and set up to run on your Zo server.
</Tip>

Sometimes, you'll want to extend your site's functionality using **external software services**.

<Accordion title="What is Software as a Service (SaaS)?">
  During the [Software as a Service (SaaS)](https://en.wikipedia.org/wiki/Software_as_a_service) boom of the 2010s, many
  companies began offering building blocks for application features like payments (Stripe), communications (Twilio), and
  much more.

  These services usually offer a generous free tier that is sufficient for most projects.
</Accordion>

<Info>
  When you integrate a new external API, your site's **backend** is responsible
  for connecting to the API. You may need to provide the necessary credentials
  to Zo to access the API. Zo should be able to walk you through the process.
</Info>

***

<Card title="Services" icon="square-terminal" href="/services">
  Want to run your own servers, APIs, databases, or any long-running process?
  Learn about **services** on your Zo server.
</Card>
