param(
    [string]$SourceFile = "Puppet_Reference_Book_Complete.md",
    [string]$OutputFile = "Puppet_Reference_Book_Complete.pdf"
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $SourceFile)) {
    throw "Source markdown file not found: $SourceFile"
}

$Pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
if (-not $Pandoc) {
    Write-Host "pandoc is not installed. Please install pandoc before running this script." -ForegroundColor Yellow
    exit 1
}

$PdfEngine = Get-Command xelatex -ErrorAction SilentlyContinue
if (-not $PdfEngine) {
    Write-Host "A PDF engine such as xelatex is required for PDF export. Install TeX Live and rerun the script." -ForegroundColor Yellow
    exit 1
}

$pandocCommand = @(
    '"' + $SourceFile + '"',
    '-o', '"' + $OutputFile + '"',
    '--from=markdown',
    '--pdf-engine=xelatex',
    '-V', 'geometry:margin=1in',
    '-V', 'colorlinks=true',
    '-V', 'linkcolor=blue',
    '--toc',
    '--number-sections'
)

Write-Host "Exporting $SourceFile to $OutputFile ..."
& $Pandoc.Source @pandocCommand

if ($LASTEXITCODE -ne 0) {
    throw "PDF export failed."
}

Write-Host "PDF export completed: $OutputFile" -ForegroundColor Green
