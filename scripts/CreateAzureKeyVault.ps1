#Creating New Azure Key Vault

$Location = 'West Europe'
$ResourceGroupName = 'KeyVaultKeyVault'
$VaultName = 'KeyVaultKeyVault'

#Adding ARM Account
Login-AzureRmAccount


#Setting subscription - if needed
# Get-AzureRmContext
# Set-AzureRmContext -SubscriptionId <SubID>

#Creating new ResourceGroup for Azure Key Vault

New-AzureRmResourceGroup –Name $ResourceGroupName -Location $Location

#Creating new Azure Key Vault

New-AzureRmKeyVault -VaultName $VaultName -ResourceGroupName $ResourceGroupName -Location $Location -Verbose