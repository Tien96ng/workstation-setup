#### Get User Info ####
echo -n 'Enter your GIT usernamename: '
read GIT_NAME
echo -n 'Enter your GIT email: '
read GIT_EMAIL

#### Update & Prereq ####
echo Installing Updates & Upgrades
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y jq

#### GIT ####
echo Installing GIT & Configurations
apt-get install -y git-all
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME

#### Installing Apps ####
