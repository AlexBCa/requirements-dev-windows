@echo off


:: Variables de entorno
set GIT_USERNAME=TuUsuarioDeGit
set GIT_USER_EMAIL=TuCorreoDeGit
set GH_REPO_URL=https://github.com/TuUsuario/TuRepositorio.git
set UBUNTU_IP=192.168.1.100


:: Istalar NVM con Chocolatey
echo Instalando NVM con Chocolatey...
choco install nvm -y

:: Instalar Node.js 18.16.1 con NVM
echo Instalando Node.js 18.16.1...
nvm install 18.16.1
nvm use 18.16.1

:: Pausa para los pasos manuales
pause
:: Instalar Git
echo Instalando Git...
choco install git -y

:: Configurar Git
echo Configurando Git...
git config --global user.name "%GIT_USERNAME%"
git config --global user.email "%GIT_USER_EMAIL%"

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

:: Pausa para los pasos manuales
pause

:: 11. Instalar Microsoft Visual C++ 2015 (debe hacerse manualmente)
pause

:: Iniciar sesión en GitHub en la web (debe hacerse manualmente)
pause

:: Instalar GitHub CLI (gh)
echo Instalando GitHub CLI (gh)...
choco install gh -y

:: Configurar GitHub con gh
echo Configurando GitHub con gh...
gh auth login

:: Clonar repositorio (reemplaza la URL con la del repositorio)
echo Clonando repositorio...
git clone https://github.com/tuusuario/turepositorio.git

:: Ejecutar npm ci en el directorio clonado
echo Ejecutando 'npm ci' en el repositorio clonado...
cd turepositorio
npm ci


:: Iniciar sesión en Docker (docker login)
echo Iniciando sesión en Docker...
docker login

:: Instalar Nx
echo Instalando Nx...
npm install -g nx@latest

:: Habilitar la ejecución de scripts en PowerShell
echo Habilitando la ejecución de scripts en PowerShell...
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

echo Todas las tareas completadas.
pause
