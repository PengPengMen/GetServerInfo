Clear-Host
set-ExecutionPolicy RemoteSigned  #允许脚本运行
Import-Module MySqlCmdlets
[string] $PasswordFlie = 'D:\serveinfo\file.txt'
[string] $username ="root"
$password = ConvertTo-SecureString -String "123qwe!@#" -AsPlainText -Force
Connect-MySqlServer -Server 192.168.2.223 -UserName $username -Password $password
Write-Host "Mysql connctiond successd"
