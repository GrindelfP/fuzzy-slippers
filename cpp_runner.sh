#!bin/bash

#compile and run c++ source code file (only one file)
function cppRun() {
    # $1 - parameter of source code filename, $2 - parameter of location of the source code
    # file starting from home/gregory/MEGA/programming/c++ directory
    if [ -z "$2" ]
	then
	    echo "You haven't pased enoug arguments! You should pass name for the sourse code file without .cpp extension and location of it starting from your c++ file in this persice order!";
    	else 
            mkdir -p /home/gregory/MEGA/programming/c++/$2/executable;
	    cd /home/gregory/MEGA/programming/c++/$2/executable;
	    g++ /home/gregory/MEGA/programming/c++/$2/$1.cpp -o executable_$1;
    	    ./executable_$1; 
    fi
}
