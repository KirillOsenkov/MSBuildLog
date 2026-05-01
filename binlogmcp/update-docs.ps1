param(
    [string]$Source = (Join-Path $PSScriptRoot "..\..\MSBuildStructuredLog\src\BinlogMcp")
)

$sourcePath = Resolve-Path $Source

Copy-Item (Join-Path $sourcePath "LlmGuide.md") (Join-Path $PSScriptRoot "LlmGuide.md") -Force
Copy-Item (Join-Path $sourcePath "SearchSyntax.md") (Join-Path $PSScriptRoot "SearchSyntax.md") -Force

Write-Host "Updated BinlogMcp docs from $sourcePath"
