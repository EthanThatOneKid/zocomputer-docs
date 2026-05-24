
Unpublish a Zo Site, removing its dedicated URL.

This deletes the user service backing the site, removing its dedicated URL (whether public or private). The site is no longer accessible at that URL.

The site itself is not deleted — it continues running on its dev server and remains accessible to the signed-in user at its authenticated preview URL (zite--.zo.computer) and via the preview iframe in the Zo web app.

## Parameters

<ParamField type="string">
  Required. Workspace-relative directory that contains the site's zosite.json (e.g. 'my-site' or 'projects/my-site').
</ParamField>
