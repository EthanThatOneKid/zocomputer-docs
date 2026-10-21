
Perform an in-depth web search using a more powerful search engine.

## Parameters

**query** `string` *required*

Search query. For people searches, use the person's full name and optionally include disambiguating context (company, role, location).

**time\_range** `string` (default: anytime)

Recency window for results: "anytime", "day", "week", "month", "year" (aliases: "a", "d", "w", "m", "y"), or a shorthand like "4h", "48h", "7d", "2w". "anytime" applies no date filter. Unrecognized values are treated as "anytime". When both an explicit date range and time\_range are given, the explicit dates win.

**category** `string`

Focus area for results. One of "company", "research paper", "pdf", "github", "tweet", "personal site", "linkedin profile", "financial report", "people".

**include\_domains** `string[]`

Domains to include.

**exclude\_domains** `string[]`

Domains to exclude.

**include\_text** `string[]`

Text that must appear verbatim in page content. Pass a single short phrase (a few words) — this is the most reliable form.
