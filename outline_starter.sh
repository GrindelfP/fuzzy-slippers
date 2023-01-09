#!bin/bash

#start outline vpn client
function outline() {
	INITLOC=$(pwd);
    cd ~;
    cd .outline;
    ./Outline-Client.AppImage
    cd ~;
    cd $INITLOC;
}
