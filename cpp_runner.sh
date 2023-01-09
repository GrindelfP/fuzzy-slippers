#!bin/bash

#compile and run c++ source code file (only one file)
function cppRun() {
    # $1 - parameter of source code filename, $2 - parameter of location of the source code
    # file starting from home/gregory/MEGA/programming/c++ directory
	SOURCE_FILE=$1.cpp;
	if [[ -f "$SOURCE_FILE" ]];
		then
			if [ -z "$1" ]
				then
	   				echo "You haven't pased source code .cpp file name!";
    			else 
            		mkdir -p executable;
	    			cd executable;
	    			g++ ../$1.cpp -o executable_$1;
    	    		./executable_$1;
    	    		cd ..; 
    		fi
    	else
    		echo "In current directory there is no needed source code .cpp file!";
	
	fi
}

