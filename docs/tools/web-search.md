
Search the web using a search engine.

## Parameters

**query** `string` *required*

Search query.

**time\_range** `string` (default: anytime)

Recency window for results: "anytime", "day", "week", "month", "year" (aliases: "a", "d", "w", "m", "y"), or a shorthand like "4h", "48h", "7d", "2w". "anytime" applies no date filter. Unrecognized values are treated as "anytime". When both an explicit date range and time\_range are given, the explicit dates win.

**include\_domains** `string[]`

List of domains to constrain results.

**topic** `string` (default: general)

"general" (search the whole web — the default) or "news" (articles from news sites). This is the search index, not a subject category: for a topic like finance, jobs, or sports, leave it "general" and put the subject in the query.
