
Create a site (also known as an app, or a website).

## Parameters

<ParamField type="string">
  name of the project, e.g. my-app (lowercase, no spaces)
</ParamField>

<ParamField type="string">
  template variant to use (blank, blog, event, slides, data, marketing). Default is blank.
</ParamField>

<ParamField type="string[]">
  Workspace-relative (/home/workspace/...parts/name) path segments where the project will be created, e.g. \["projects"] or empty for root of workspace
</ParamField>

<ParamField type="boolean">
  Whether to overwrite an existing directory with the same name. Default False.
</ParamField>
