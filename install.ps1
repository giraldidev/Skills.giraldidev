# Instala as skills deste repositorio globalmente em ~/.claude/skills (Windows).
# Torna-as disponiveis em QUALQUER projeto do Claude Code.
#
# Uso (PowerShell):
#   .\install.ps1            # instala todas as skills
#   .\install.ps1 nome       # instala apenas uma (ex.: .\install.ps1 ui-ux-pro-max)

param([string]$Skill)

$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$Src  = Join-Path $Root ".claude\skills"
$Dest = Join-Path $env:USERPROFILE ".claude\skills"

if (-not (Test-Path $Src)) {
    Write-Host "❌ Pasta de skills nao encontrada em $Src" -ForegroundColor Red
    exit 1
}

New-Item -ItemType Directory -Force -Path $Dest | Out-Null

function Install-One($name) {
    $from = Join-Path $Src $name
    if (-not (Test-Path $from)) {
        Write-Host "⚠️  Skill '$name' nao existe — pulando." -ForegroundColor Yellow
        return
    }
    $to = Join-Path $Dest $name
    if (Test-Path $to) { Remove-Item -Recurse -Force $to }
    Copy-Item -Recurse $from $to
    Write-Host "✅ Instalada: $name" -ForegroundColor Green
}

if ($Skill) {
    Install-One $Skill
} else {
    Get-ChildItem -Directory $Src | ForEach-Object { Install-One $_.Name }
}

Write-Host ""
Write-Host "🎉 Pronto! Skills instaladas em: $Dest"
Write-Host "   Abra qualquer projeto com o Claude Code e digite / para ve-las."
