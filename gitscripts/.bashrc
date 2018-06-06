function gll {
    git branch --sort=committerdate;
}

function gsb {
   if [ $# -gt 0 ] ; then
       git checkout $1
       return 0;
   fi;

   # Present the last three git branches and let user pick one
   printf '\e[1;32m%-6s\e[m'  "Toggle between last modified git branches."; 
   printf "\nUsage: gsb [branchname]\n\n";
   BRANCHES=$(git branch --sort=committerdate | tail -5 | awk '{print $NF}');

   select d in $BRANCHES; do
        if [ -n "$d" ]; then
            git checkout $d;
            break;
        fi
    done

}

alias gsb=gsb
alias gll=gll
