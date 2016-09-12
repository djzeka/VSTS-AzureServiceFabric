#PowerShell script to obtain a Base64-encoded representation of a certificate

[System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes("path-to-certificate-file\certificate.pfx"))