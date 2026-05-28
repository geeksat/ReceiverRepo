param(
    [Parameter(Mandatory = $false)]
    [string]$SourceRepo,

    [Parameter(Mandatory = $false)]
    [string]$SourceRunId,

    [Parameter(Mandatory = $true)]
    [string]$Location,

    [Parameter(Mandatory = $true)]
    [string]$VNetName,

    [Parameter(Mandatory = $true)]
    [string]$SubnetsJson
)

$subnets = $SubnetsJson | ConvertFrom-Json

Write-Host "Received values in Pipeline B"
Write-Host "Source Repo: $SourceRepo"
Write-Host "Source Run ID: $SourceRunId"
Write-Host "Location: $Location"
Write-Host "VNet Name: $VNetName"
Write-Host "Total Subnets: $($subnets.Count)"

foreach ($subnet in $subnets) {
    Write-Host "Subnet Name: $($subnet.name)"
    Write-Host "Subnet CIDR: $($subnet.cidr)"
    Write-Host "Subnet Type: $($subnet.type)"
    Write-Host "---"
}
