
Work with the user's connected X (Twitter) account.

## Parameters

**tool\_name** `string` *required*

Action name from `list_app_tools("x")` (e.g., "x-post-tweet", "x-send-dm", "x-get-dms")

**configured\_props** `object` *required*

Action parameters (e.g., `{"text": "Hello world!"}` for posting)

**username** `string`

Optional X username to specify which connected account to use (for multi-account).
