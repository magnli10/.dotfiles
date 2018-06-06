# Open a bob feature git branch in jira using chrome
function jiratask {
    JIRAID=$(git branch | grep \* | sed -n 's/.*\([0-9][0-9][0-9][0-9][0-9][0-9]*\).*/\1/p')
    
    if [ "$1" = "--help" ] || [ "$1" = "-h" ] || [ -z "$JIRAID" ]; then
       printf '\e[1;32m%-6s\e[m'  "Open jira document associated with bob feature branch."; 
       printf "\nUsage: jiratask \n\n";
       return 0;
    fi;

   google-chrome "https://jira.intern.sparebank1.no/browse/DIG-"$JIRAID;
}

alias jiratask=jiratask

