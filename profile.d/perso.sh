TR_DIR='/home/rcr/Dropbox/tri/training/week'
THIS_WEEK='/home/rcr/Dropbox/tri/training/week/this_week.txt'

# ==================================
#     ALIAS
# ==================================
alias runepicurom='~/bin/google_appengine/dev_appserver.py ~/sandboxes/epicurom/'
alias epicurom='cd ~/sandboxes/epicurom'
alias mytr="vi $THIS_WEEK"
alias mytrdir="cd $TR_DIR"
alias mynewtr="create_newtr "

function create_newtr {
    if [ -n "$1" ]
    then
        mytrdir
        if [ -a this_week.txt ]
        then
            rm this_week.txt
        fi
        cp pattern.txt 15_$1_tr.txt
        ln -s 15_$1_tr.txt this_week.txt
    else
        echo Usage: newtr week-1_name
    fi
}
