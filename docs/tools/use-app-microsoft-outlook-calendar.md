
Work with the user's connected Microsoft Outlook Calendar account.

## Parameters

<ParamField type="string">
  Exact tool name returned by `list_app_tools`.
</ParamField>

<ParamField type="object">
  The configured props for the action. For list-events: `{"startDateTime": "2024-01-01T00:00:00-05:00", "endDateTime": "2024-01-02T00:00:00-05:00"}`. For create-calendar-event: `{"subject": "Meeting", "start": "2024-01-01T14:00:00", "end": "2024-01-01T14:30:00", "timeZone": "America/New_York"}`.
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
