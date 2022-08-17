# Upgrade packages
sudo apt update && sudo apt upgrade -y

# Install JDK: https://www.linuxcapable.com/how-to-install-openjdk-17-on-ubuntu-20-04/
sudo apt-get install openjdk-8-jdk -y

# Install IntelliJ ultimate edition: https://linoxide.com/install-intellij-idea-on-ubuntu
sudo snap install intellij-idea-ultimate --classic

# Install Docker Engine: https://docs.docker.com/engine/install/ubuntu/
sudo apt-get update -y
sudo apt-get install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

sudo rm /etc/apt/keyrings/docker.gpg -f
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Install git
sudo apt-get install git

# Generate GitLab token for Downloading Gradle Dependencies
# https://gitlab.com/-/profile/personal_access_tokens?name=gradle_build&scopes=api,read_api,read_repository,read_registry

# Set GITLAB_TOKEN for Downloading Gradle Dependencies
#> sudo touch /etc/profile.d/development.sh
#> sudo chmod -R 777 /etc/profile.d/development.sh
#> sudo echo export GITLAB_TOKEN=glpat-pMkve7eiEjFH433Yy9CU>>/etc/profile.d/development.sh
# Then restart the VM, or use "source /etc/profile.d/development.sh" - pending verify
# Out the Gitlab Token to confirm
#> echo $GITLAB_TOKEN

# Git Configuration
#> git config --global user.name "leliu"
#> git config --global user.email "lewis.qun.liu@kingland.com"
# List the config to confirm
#> git config --list