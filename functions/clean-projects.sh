function clean-projects () {
    	work
    	for d in */;
        do
            cd $d
            if [ -d .git ]; then
                echo -e "\e[44m Starting $d "$reset_color
                git fetch
                develop
                pull
                master
                pull
                gitclean
                gitprune
                echo -e "\e[44m Finished $d "$reset_color
            fi;
            work
        done
}