param(
    [Parameter(Mandatory = $true)]
    [string]$SourceRepo,

    [Parameter(Mandatory = $true)]
    [string]$SourceRunId,

    [Parameter(Mandatory = $true)]
    [string]$Location,

    [Parameter(Mandatory = $true)]
    [string]$VNetName,

    [Parameter(Mandatory = $true)]
    [string]$SubnetsJson
)

$subnets = $SubnetsJson | ConvertFrom-Json

Write-Host "Received values in Repo B"
Write-Host "Source Repo: $SourceRepo"
Write-Host "Source Run ID: $SourceRunId"
Write-Host "Location: $Location"
Write-Host "VNet Name: $VNetName"
Write-Host "Subnet Count: $($subnets.Count)"
Write-Host ""

foreach ($subnet in $subnets) {
    Write-Host "Subnet Name: $($subnet.name)"
    Write-Host "Subnet CIDR: $($subnet.cidr)"
    Write-Host "Subnet Type: $($subnet.type)"
    Write-Host "---"
}
