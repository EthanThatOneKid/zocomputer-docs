
Create a site (also known as an app, or a website).

## Parameters

**name** `string` *required*

name of the project, e.g. my-app (lowercase, no spaces)

**variant** `string` (default: blank)

template variant to use: blank, blog, event, slides, data (dashboard), marketing (landing page), portfolio (personal site + case studies), kb (markdown knowledge base), waitlist (email-capture coming-soon page), storefront (product grid + Stripe checkout). Default is blank.

**parent\_path\_parts** `string[]`

Workspace-relative (/home/workspace/...parts/name) path segments where the project will be created, e.g. \["projects"] or empty for root of workspace

**force** `boolean` (default: false)

Whether to overwrite an existing directory with the same name. Default False.
