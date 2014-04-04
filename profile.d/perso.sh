TR_DIR='/home/rcr/Dropbox/tri/training/week'
THIS_WEEK='/home/rcr/Dropbox/tri/training/week/this_week.txt'

# ==================================
#     ALIAS
# ==================================
alias runepicurom='~/bin/google_appengine/dev_appserver.py ~/sandboxes/epicurom/'
alias epicurom='cd ~/sandboxes/epicurom'
alias mytr="vi $THIS_WEEK"
alias mytrdir="cd $TR_DIR"
alias mynewtr="newtr_func "

function newtr_func {
    if [ -n "$1" ]
    then
        trdir
        mv this_week.txt 14_$1_tr.txt
        cp pattern.txt this_week.txt
    else
        echo Usage: newtr week-1_name
    fi
}


