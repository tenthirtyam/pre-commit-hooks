# Copyright (c) Ryan Johnson
# SPDX-License-Identifier: MIT

param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Path
)

$issues = Invoke-ScriptAnalyzer -Path $Path -Severity @('Error', 'Warning')
if ($issues) {
    $issues | Format-Table -AutoSize
    exit 1
}
