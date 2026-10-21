
Read a file from the computer.

Zo Computer supports a wide range of file formats including text, word processing, spreadsheets, presentations, PDFs, ebooks, images, audio, and video. AI that can work with spreadsheets (.xlsx, .xls). AI that can work with Word documents (.docx, .doc). AI that can work with PowerPoint presentations (.pptx). AI that can work with PDF files (.pdf). AI that can transcribe audio files (.mp3, .wav, .m4a). AI that can transcribe and convert video files (.mp4, .mov, .avi). AI that can work with ebooks (.epub). AI that can see and convert images (.png, .jpg, .gif).

## Parameters

**target\_file** `string` *required*

The absolute path of the file to read.

**start\_line** `number` (default: -1)

The 1-indexed line number to start reading from (text files).

**end\_line** `number` (default: -1)

The 1-indexed line number to end reading at, inclusive (text files).

**read\_entire\_file** `boolean` (default: false)

If true, read the entire text file.

**pdf\_epub\_start\_page\_1\_indexed** `number` (default: -1)

The 1-indexed start page for the PDF/EPUB read.

**pdf\_epub\_end\_page\_1\_indexed\_inclusive** `number` (default: -1)

The 1-indexed end page (inclusive) for the PDF/EPUB read.

**pdf\_epub\_include\_images** `boolean` (default: false)

If true, include rendered page images. This is slower and should be used sparingly.
