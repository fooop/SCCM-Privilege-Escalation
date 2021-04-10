# SCCM-Privilege-Escalation

System administrators using SCCM will in many cases write vulnerable application install scripts, some common mistakes are:
- Loading of DLL/EXE files, or scripts from a writable location - either locally or from network shares.
- Hardcoded credentials
- Other restricted information

This script will scan `C:\Windows\CCM\Logs\AppEnforce.log` and will find directories under `C:\Windows\CCMCache`, containing cached installation scripts.
The directory `C:\Windows\CCMCache` is normally unaccessible to non-administrators, but it's subdirectories can be accessed if the direct path is known.
