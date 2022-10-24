 #!/bin/bash

### CHECKING OS
 OS="Unknown"
 LINUX=false
 echo "Checking device OS...."

 checkLinuxType() {
    tmp=$(grep "^ID_LIKE" /etc/os-release)
    echo "${tmp}"

}

case "$OSTYPE" in
  solaris*) OS="SOLARIS" ;;
  darwin*)  OS="OSX" ;; 
  linux*)   OS="LINUX" ;;
  bsd*)     OS="BSD" ;;
  msys*)    OS="WINDOWS" ;;
  cygwin*)  OS="WINDOWS" ;;
  *)        OS="Unknown" ;;
esac

if [ "$OS" = "Unknown" ]; then
    echo "OS is Unknown, script ending..."
else
    if [ "$OS" = "LINUX" ]; then
        echo "OS is Linux based. Checking Linux version/type..."
        echo "Good Bye!"
        OS=$(checkLinuxType)
        LINUX=true
    fi

    echo ""
    echo "Current OS: "${OS:8}

    if [ LINUX ]; then
        echo "Is Linux"
        ### Run setup.sh depending on with Linux Distro type
    else
        echo "Not Linux"
        ### Case for WIN
        ### Case for OSX
    fi
fi


$SHELL