#Script to add secret to KeyVault
#more at https://azure.microsoft.com/en-us/documentation/articles/key-vault-get-started/

Login-AzureRmAccount

Set-AzureRmContext -SubscriptionName "<SubscriptionName>" -Verbose 
Set-AzureRmKeyVaultAccessPolicy -VaultName KeyVaultKeyVault -ResourceGroupName KeyVaultKeyVault -EnabledForDeployment


Add-AzureKeyVaultKey -Destination Software -Name certpwd -VaultName KeyVaultKeyVault

$secretvalue = ConvertTo-SecureString '<secret_txt_here>' -AsPlainText -Force

$secret = Set-AzureKeyVaultSecret -VaultName 'KeyVaultKeyVault' -Name 'certpwd' -SecretValue $secretvalue

#Display URI for this secret

$secret.Id