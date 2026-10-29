
Update space settings — space-globally or for a single page route.

## Parameters

**path** `string`

Empty string (default) for space-global settings; route path (e.g. "/" or "/about") for per-page override.

**site\_title** `string`

Title override. Pass "default" to clear.

**site\_description** `string`

Meta description. Pass "default" to clear.

**og\_image\_url** `string`

Asset path for OG image (e.g. "/assets/og.png"). Pass "default" to clear.

**favicon\_url** `string`

Asset path for favicon. Space-global only.

**custom\_head\_html** `string`

HTML for \<head>. Space-global only.

**robots\_txt** `string`

Custom robots.txt. Space-global only.

**noindex** `string`

true adds noindex/nofollow, false removes it, "default" clears any per-page override (inherit from space).

**custom\_404\_route** `string`

Custom 404 route path. Space-global only.

**lang** `string`

HTML lang attribute. Space-global only.

**atproto\_did** `string`

AT Protocol DID. Space-global only.
