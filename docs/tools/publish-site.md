
Publish or republish a Zo Site so it gets a dedicated URL and runs a production build.

Publishing a site creates an HTTP user service under the hood. The site runs a production build and gets a dedicated, memorable URL that works from anywhere — not just the preview iframe.

## What publishing does

* Runs the site as a production service (not the dev server)
* Assigns a dedicated URL you can share and access from any browser
* Public sites: URL at \*.zocomputer.io, accessible to anyone without sign-in
* Private sites: URL at \*.zo.computer, requires the owner to be signed in

## Before publishing

The site is already running (dev server) and accessible to the signed-in user at its authenticated preview URL (zite--.zo.computer) and via the preview iframe in the Zo web app. Publishing upgrades it to a production build with a clean URL.

Omit public when republishing to preserve current visibility. Visibility changes keep your custom domains and certificates registered, so switching back to public requires no domain setup.

Do NOT use register\_user\_service or update\_user\_service for sites — use this tool instead. The publish config (label, port, entrypoint) is read from the site's zosite.json.

## Parameters

**site\_path** `string` *required*

Required. Workspace-relative directory that contains the site's zosite.json (e.g. 'my-site' or 'projects/my-site').

**public** `string`

Optional visibility override. Omit to preserve current visibility when republishing; a newly published site defaults to public. Set explicitly only for visibility requested by the user. 'true': public URL at \*.zocomputer.io. 'false': owner-only URL at \*.zo.computer. Visibility changes preserve attached custom domains and Cloudflare registrations.
