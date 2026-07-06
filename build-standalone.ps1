$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$htmlPath = Join-Path $root "index.html"
$cssPath = Join-Path $root "styles.css"
$jsPath = Join-Path $root "app.js"
$outputPath = Join-Path $root "PERFORMANCE_360_AVALIACAO_ATUALIZADO.html"

$html = [System.IO.File]::ReadAllText($htmlPath, [System.Text.Encoding]::UTF8)
$css = [System.IO.File]::ReadAllText($cssPath, [System.Text.Encoding]::UTF8)
$js = [System.IO.File]::ReadAllText($jsPath, [System.Text.Encoding]::UTF8)

$zenirPath = Join-Path $root "assets\logo-zenir.png"
$focoPath = Join-Path $root "assets\logo-foco.png"
if(Test-Path $zenirPath){
  $zenirData = "data:image/png;base64," + [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($zenirPath))
  $js = $js.Replace('"assets/logo-zenir.png"', '"' + $zenirData + '"')
}
if(Test-Path $focoPath){
  $focoData = "data:image/png;base64," + [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($focoPath))
  $js = $js.Replace('"assets/logo-foco.png"', '"' + $focoData + '"')
}

$html = [regex]::Replace($html, '<link rel="stylesheet" href="styles\.css[^"]*">', "<style>`r`n$css`r`n</style>")
$html = [regex]::Replace($html, '<script src="app\.js[^"]*" defer></script>', "<script defer>`r`n$js`r`n</script>")

[System.IO.File]::WriteAllText(
  $outputPath,
  $html,
  [System.Text.UTF8Encoding]::new($false)
)

Write-Output $outputPath
