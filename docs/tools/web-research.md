
Perform an in-depth web search using a more powerful search engine.

## Parameters

<ParamField type="string">
  Search query. For people searches, use the person's full name and optionally include disambiguating context (company, role, location).
</ParamField>

<ParamField type="string">
  Recency window for results: "anytime", "day", "week", "month", "year" (aliases: "a", "d", "w", "m", "y"), or a shorthand like "4h", "48h", "7d", "2w". "anytime" applies no date filter. Unrecognized values are treated as "anytime". When both an explicit date range and time\_range are given, the explicit dates win.
</ParamField>

<ParamField type="string">
  Focus area for results. One of "company", "research paper", "pdf", "github", "tweet", "personal site", "linkedin profile", "financial report", "people".
</ParamField>

<ParamField type="string[]">
  Domains to include.
</ParamField>

<ParamField type="string[]">
  Domains to exclude.
</ParamField>

<ParamField type="string[]">
  Text that must appear verbatim in page content. Pass a single short phrase (a few words) — this is the most reliable form.
</ParamField>
