#Print debug logs for nettsider from local aemauthor
function aemlog {
    HOST="vagrant@aemauthor";
    FILE="/var/log/cq/application/debug.log";

    if ssh $HOST stat $FILE \> /dev/null 2\>\&1
        then
            echo "Logging with tail, supply the parameters you need. E.g. supply -f parameter to follow file input.";
            ssh $HOST tail $FILE $@;
            return 0;
        else
            echo "No debug log found. Is logging enabled? Guide: https://confluence.intern.sparebank1.no/display/NN/Logging";
    fi;

}

alias aemlog=aemlog;