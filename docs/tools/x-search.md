
Search X (Twitter) for posts and users matching a query.

## Parameters

<ParamField type="string">
  Natural language prompt describing what to find on X.
</ParamField>

<ParamField type="string[]">
  Only include posts from these X handles (max 10). Cannot be used with excluded\_x\_handles.
</ParamField>

<ParamField type="string[]">
  Exclude posts from these X handles (max 10). Cannot be used with allowed\_x\_handles.
</ParamField>

<ParamField type="string">
  Recency window for results: "anytime", "day", "week", "month", "year" (aliases: "a", "d", "w", "m", "y"), or a shorthand like "4h", "48h", "7d", "2w". "anytime" applies no date filter. Unrecognized values are treated as "anytime". When both an explicit date range and time\_range are given, the explicit dates win.
</ParamField>

<ParamField type="string">
  Start date (YYYY-MM-DD). If set, only results on/after this date are considered. Takes precedence over time\_range.
</ParamField>

<ParamField type="string">
  End date (YYYY-MM-DD). If set, only results on/before this date are considered.
</ParamField>

<ParamField type="boolean">
  If true, allow the agent to view and interpret images from X posts.
</ParamField>

<ParamField type="boolean">
  If true, allow the agent to view and interpret videos from X posts.
</ParamField>
