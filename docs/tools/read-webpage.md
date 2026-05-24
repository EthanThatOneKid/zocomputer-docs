
Read the content of a webpage.

For standard webpages, the content is saved as Markdown to Zo's workspace for the conversation along with the original HTML file. For file URLs (PDFs, images, audio, video, etc), the file is downloaded to the conversation workspace. This tool can use [Zo's browser](https://docs.zocomputer.com/browser) to visit the page if needed. Using Zo's browser is slower, but can be used to access pages that render dynamic content or require authentication.

## Parameters

<ParamField type="string">
  The URL of the webpage to visit.
</ParamField>

<ParamField type="string">
  Whether to use Zo's browser to visit the page (false by default).
</ParamField>
