
Search the web using a search engine.

## Parameters

<ParamField type="string">
  Search query.
</ParamField>

<ParamField type="string">
  Recency window for results: "anytime", "day", "week", "month", "year" (aliases: "a", "d", "w", "m", "y"), or a shorthand like "4h", "48h", "7d", "2w". "anytime" applies no date filter. Unrecognized values are treated as "anytime". When both an explicit date range and time\_range are given, the explicit dates win.
</ParamField>

<ParamField type="string[]">
  List of domains to constrain results.
</ParamField>

<ParamField type="string">
  "general" (search the whole web — the default) or "news" (articles from news sites). This is the search index, not a subject category: for a topic like finance, jobs, or sports, leave it "general" and put the subject in the query.
</ParamField>
