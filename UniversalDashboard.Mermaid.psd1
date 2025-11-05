@{
    RootModule = 'UniversalDashboard.Mermaid.psm1'
    ModuleVersion = '0.0.1'
    GUID = '956fef01-311b-4424-ba62-263ff8a68e32'
    Author = 'Adam Driscoll'
    CompanyName = 'Ironman Software'
    Copyright = '(c) 2025 Ironman Software. All rights reserved.'
    Description = 'Mermaid diagram component for PowerShell Universal Dashboard. Create flowcharts, sequence diagrams, class diagrams, state diagrams, and more using Mermaid syntax.'
    FunctionsToExport = @('New-UDMermaid')
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()
    PrivateData = @{
        PSData = @{
            Tags = @('PSEdition_Desktop', 'PSEdition_Core', 'Windows', 'Linux', 'MacOS', 'UniversalDashboard', 'Mermaid', 'Diagrams', 'Visualization', 'Charts')
            LicenseUri = 'https://github.com/ironmansoftware/ud-mermaid/blob/main/LICENSE'
            ProjectUri = 'https://github.com/ironmansoftware/ud-mermaid'
        }
    }
}

