#
#Details and guidance at  https://github.com/ChackDan/Service-Fabric //
#Thanks Chacko Daniel! 

Import-Module C:\Temp\ServiceFabricRPHelpers\ServiceFabricRPHelpers.psm1

#Enable Deplyment to Key Vault

Set-AzureRmKeyVaultAccessPolicy -VaultName KeyVaultKeyVault -ResourceGroupName KeyVaultKeyVault -EnabledForDeployment

#Create and add cert to key vault 
Login-AzureRmAccount
Invoke-AddCertToKeyVault -SubscriptionId <SubscriptionId> `
                         -ResourceGroupName KeyVaultKeyVault `
                         -Location 'west Europe' `
                         -VaultName KeyVault `
                         -CertificateName CertificateforSFcluster `
                         -Password 123 `
                         -CreateSelfSignedCertificate `
                         -DnsName <dns-name-of-asf-cluster>.westeurope.azure.com `
                         -OutputPath C:\temp\