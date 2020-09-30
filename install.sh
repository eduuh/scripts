#/bin/bash
function SetupMachine() {
     # Install .NET CLI dependencies
    sudo apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            libc6 \
            libgcc1 \
            libgssapi-krb5-2 \
            libicu66 \
            liblttng-ust0 \
            libssl1.1 \
            libstdc++6 \
            zlib1g \
            wget\
        && rm -rf /var/lib/apt/lists/*
}

function SetupDotnetCore(){
  print "Edwin let me set up Dotonet for you.on your ubuntu 20.04"
  wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  print "Installing Dotnet core"
  sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1

  print "Installing the runtime"
 
  sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-3.1

  sudo apt-get install -y dotnet-runtime-3.1

}

function SetupDocker(){

}

function InstallNeededContainers() {

}

function SetupgithubSshKey()  {

}


