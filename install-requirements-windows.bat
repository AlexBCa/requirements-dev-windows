@echo off


:: Variables de entorno
set UBUNTU_IP=192.168.1.100


:: Istalar NVM con Chocolatey
echo Instalando NVM con Chocolatey...
choco install nvm -y


:: Pausa para los pasos manuales
pause
:: Instalar Git
echo Instalando Git...
choco install git -y


:: Cambiar el host de Windows con la IP de Ubuntu (reemplaza con tu IP)
echo Cambiando el host de Windows con la IP de Ubuntu...

:: Agregar líneas al archivo hosts utilizando PowerShell
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%       registry.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%       registryui.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%       api.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%      mongoui.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%       rabbitui.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%      sso.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%       pgadmin.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%      files.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%      console.files.starter.local'" -Force
powershell -Command "Add-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Value '%UBUNTU_IP%      kong'" -Force


:: 11. Instalar Microsoft Visual C++ 2015 (debe hacerse manualmente)
pause

:: Iniciar sesión en GitHub en la web (debe hacerse manualmente)
pause

:: Instalar GitHub CLI (gh)
echo Instalando GitHub CLI (gh)...
choco install gh -y

:: Habilitar la ejecución de scripts en PowerShell
echo Habilitando la ejecución de scripts en PowerShell...
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

echo Todas las tareas completadas.
pause
