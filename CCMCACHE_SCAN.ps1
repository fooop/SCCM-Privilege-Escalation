Write-Host "============================================="
Write-Host "  Checking CCMCACHE for deployment packages  " -ForegroundColor Red
Write-Host "=============================================" 


$Paths = Get-Content -Path "C:\Windows\CCM\Logs\AppEnforce.log" -ErrorAction SilentlyContinue | Select-String -Pattern "Content path: "


if($Paths){
    Write-Output "[+] Found packages!"
    Write-Output "[+] Check the contents of the following paths to find potential script misconfigurations"

    Write-Output $Paths | Select-String -Pattern "C:\\"
}

else{
    Write-Output "[!] Cloud not find any packages. Is SCCM configured?"
    Write-Output "[!] Open the software center and click 'Install' on all applications `n"
}
