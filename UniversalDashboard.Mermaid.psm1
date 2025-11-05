# Register JavaScript assets with PowerShell Universal
Get-ChildItem "$PSScriptRoot\*.js" | ForEach-Object {
    $Item = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($_.FullName)
    if ($_.Name.StartsWith("index.") -and $_.Name.EndsWith(".bundle.js")) {
        $AssetId = $Item
    }
}


function New-UDMermaid {
    <#
    .SYNOPSIS
    Creates a new Mermaid diagram component
    
    .DESCRIPTION
    Creates a new Mermaid diagram component that renders diagrams using Mermaid syntax
    
    .PARAMETER Id
    The ID of this component

    .PARAMETER Diagram
    The Mermaid diagram definition as a string

    .PARAMETER Config
    A hashtable of configuration options for Mermaid

    .EXAMPLE
    New-UDMermaid -Diagram 'graph TD; A-->B; B-->C;'
    
    .EXAMPLE
    New-UDMermaid -Diagram 'sequenceDiagram; Alice->>John: Hello John, how are you?; John-->>Alice: Great!' -Config @{ theme = 'dark' }
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter(Mandatory)]
        [string]$Diagram,
        [Parameter()]
        [hashtable]$Config
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "ud-mermaid"
            id = $Id

            diagram = $Diagram
            config = $Config
        }
    }
}