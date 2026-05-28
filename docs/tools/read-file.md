
Read a file from the computer.

Zo Computer supports a wide range of file formats including text, word processing, spreadsheets, PDFs, ebooks, images, audio, and video. AI that can work with spreadsheets (.xlsx, .xls). AI that can work with Word documents (.docx, .doc). AI that can work with PDF files (.pdf). AI that can transcribe audio files (.mp3, .wav, .m4a). AI that can transcribe and convert video files (.mp4, .mov, .avi). AI that can work with ebooks (.epub). AI that can see and convert images (.png, .jpg, .gif).

## Parameters

<ParamField type="string">
  The absolute path of the file to read.
</ParamField>

<ParamField type="number">
  The 1-indexed line number to start reading from (text files).
</ParamField>

<ParamField type="number">
  The 1-indexed line number to end reading at, inclusive (text files).
</ParamField>

<ParamField type="boolean">
  If true, read the entire text file.
</ParamField>

<ParamField type="number">
  The 1-indexed start page for the PDF/EPUB read.
</ParamField>

<ParamField type="number">
  The 1-indexed end page (inclusive) for the PDF/EPUB read.
</ParamField>

<ParamField type="boolean">
  If true, include rendered page images. This is slower and should be used sparingly.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, reads the file from that running device's container instead of the host. The device must be started first. Requires the 'devices:manage' scope.
</ParamField>
