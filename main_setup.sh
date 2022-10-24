 #!/bin/bash

### CHECKING OS
 OS="Unknown"
 LINUX=false
 echo "Checking device OS...."

case "$OSTYPE" in
  solaris*) OS="SOLARIS" ;;
  darwin*)  OS="OSX" ;; 
  linux*)   OS="LINUX" ;;
  bsd*)     OS="BSD" ;;
  msys*)    OS="WINDOWS" ;;
  cygwin*)  OS="WINDOWS" ;;
  *)        OS="Unknown" ;;
esac

checkLinuxType() {
    tmp=$(grep "^ID_LIKE" /etc/os-release)
    echo "${tmp}"

}

if [ "$OS" = "LINUX" ]; then
    echo "OS is Linux based. Checking Linux version/type..."
    OS=$(checkLinuxType)
    LINUX=true
fi

echo ""
echo "Current OS: "${OS:8}

if [ LINUX ]; then
    echo "Is Linux"
else
    echo "Not Linux"
fi


$SHELL