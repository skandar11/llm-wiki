# setup - prepare a clean Windows machine. macOS / Linux - bin/setup.
#
# Executor of meta-vault/operations/add-engine.md and of the «first launch» step.
# Run from the namespace root:
#   powershell -ExecutionPolicy Bypass -File bin\setup.ps1
# What it does: git and Python 3.10+ via winget (if they are missing, into the
# user profile, without administrator rights); if there is an engine
# (engine\pyproject.toml or engine\requirements.txt) - .venv at the root and
# the dependencies; the engine's system packages - engine\setup-extra.ps1, if
# present; checks long paths; creates secrets\ (outside git); at the end -
# bin\check.
# Re-running is safe: it installs only what is missing.
# The file is saved as UTF-8 with BOM: otherwise Windows PowerShell 5.1 breaks Cyrillic.

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$env:PYTHONIOENCODING = 'utf-8'
Set-Location (Split-Path $PSScriptRoot -Parent)
Write-Host "setup: $(Get-Location)"

function Have($name) { [bool](Get-Command $name -ErrorAction SilentlyContinue) }
function Refresh-Path {
  $env:Path = [Environment]::GetEnvironmentVariable('Path', 'User') + ';' +
              [Environment]::GetEnvironmentVariable('Path', 'Machine')
}
function Winget-Install($id) {
  if (-not (Have 'winget')) { throw "no winget: install $id manually and run setup again" }
  winget install -e --id $id --scope user --accept-source-agreements --accept-package-agreements
  Refresh-Path
}

if (-not (Have 'git')) { Winget-Install 'Git.Git' }

function Find-Python {
  foreach ($c in @('py', 'python', 'python3')) {
    if (Have $c) {
      & $c -c "import sys; sys.exit(0 if sys.version_info >= (3, 10) else 1)" 2>$null
      if ($LASTEXITCODE -eq 0) { return $c }
    }
  }
  $local = Join-Path $env:LOCALAPPDATA 'Programs\Python\Python312\python.exe'
  if (Test-Path $local) { return $local }
  return $null
}
$py = Find-Python
if (-not $py) { Winget-Install 'Python.Python.3.12'; $py = Find-Python }
if (-not $py) { throw 'Python 3.10+ not found after installation: open a new PowerShell window and run setup again' }
Write-Host "python: $(& $py --version)"

# Long paths: without them Windows does not create files deeper than 260 characters.
$lp = (Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -ErrorAction SilentlyContinue).LongPathsEnabled
if ($lp -ne 1) {
  Write-Host 'warning: long paths are disabled (LongPathsEnabled = 0).'
  Write-Host '  the machine owner enables it, with administrator rights - see meta-vault/forms/handover-door-form.md'
}
if (Test-Path '.git') { git config core.longpaths true }

if ((Test-Path 'engine\pyproject.toml') -or (Test-Path 'engine\requirements.txt')) {
  if (-not (Test-Path '.venv')) { & $py -m venv .venv }
  $vpy = '.venv\Scripts\python.exe'
  & $vpy -m pip install -q --upgrade pip
  if (Test-Path 'engine\pyproject.toml') { & $vpy -m pip install -q -e engine }
  else { & $vpy -m pip install -q -r engine\requirements.txt }
  if (Test-Path 'engine\setup-extra.ps1') { & 'engine\setup-extra.ps1' }
  Write-Host 'engine: .venv ready'
} else {
  Write-Host 'no engine - nothing to install'
}

New-Item -ItemType Directory -Force -Path 'secrets' | Out-Null
& $py bin\check --quiet
if ($LASTEXITCODE -ne 0) { Write-Host 'bin\check found things to fix - run it without --quiet' }
Write-Host 'done'
