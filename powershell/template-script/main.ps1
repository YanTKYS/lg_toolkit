# MIT License
#
# SPDX-License-Identifier: MIT
#
# Copyright (c) 2026 YanTKYS
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

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
