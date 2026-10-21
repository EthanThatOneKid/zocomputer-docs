
Read the content of a webpage.

For standard webpages, the content is saved as Markdown to Zo's workspace for the conversation along with the original HTML file. For file URLs (PDFs, images, audio, video, etc), the file is downloaded to the conversation workspace. This tool can use [Zo's browser](https://www.zo.computer/guide/browser) to visit the page if needed. Using Zo's browser is slower, but can be used to access pages that render dynamic content or require authentication.

## Parameters

**url** `string` *required*

The URL of the webpage to visit.

**use\_browser** `string`

Whether to use Zo's browser to visit the page (false by default).
