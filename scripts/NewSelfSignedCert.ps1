#Simple Script to create SelfSignedCertificate

$DnsName = 'abc.com'
$NewPfxFilePath = 'C:\Temp'
$password = 'abcFFF123123'
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force

New-SelfSignedCertificate -CertStoreLocation Cert:\CurrentUser\My -DnsName $DnsName -Provider 'Microsoft Enhanced Cryptographic Provider v1.0' | Export-PfxCertificate -FilePath $NewPfxFilePath -Password $securePassword