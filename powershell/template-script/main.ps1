param(
    [switch]$DryRun,
    [string]$LogPath = ".\\run.log"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Write-Log {
    param(
        [string]$Level,
        [string]$Message
    )

    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    $line = "[$timestamp][$Level] $Message"
    Write-Host $line
    Add-Content -Path $LogPath -Value $line
}

function Invoke-Main {
    try {
        Write-Log -Level 'INFO' -Message '処理を開始します。'

        if ($DryRun) {
            Write-Log -Level 'INFO' -Message 'DryRun: 実処理は実行しません。'
        }
        else {
            # TODO: 実処理をここに実装
            Write-Log -Level 'INFO' -Message '実処理を実行しました（テンプレート）。'
        }

        Write-Log -Level 'INFO' -Message '処理を正常終了します。'
        exit 0
    }
    catch {
        Write-Log -Level 'ERROR' -Message $_.Exception.Message
        exit 1
    }
}

Invoke-Main
