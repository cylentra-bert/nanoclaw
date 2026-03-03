$projectDir = "C:\Users\BertNielson\OneDrive - Cylentra\Projects\nanoclaw"
$logFile = "$projectDir\logs\nanoclaw.log"
$errFile = "$projectDir\logs\nanoclaw-err.log"
$nodeExe = (Get-Command node).Source

Start-Process -FilePath $nodeExe `
  -ArgumentList "dist\index.js" `
  -WorkingDirectory $projectDir `
  -RedirectStandardOutput $logFile `
  -RedirectStandardError $errFile `
  -WindowStyle Hidden `
  -PassThru | ForEach-Object { Write-Host "NanoClaw started, PID: $($_.Id)" }
