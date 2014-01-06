export PVXAPP=~/pvxapp
export PVXAPP_PYTHON=$PVXAPP/bin/python
export PVXAPP_CORE=$PVXAPP/pvxcore
export PVXAPP_LIB=$PVXAPP/lib/python2.7
export PVXAPP_DOWNLOAD=$PVXAPP/download
export ITOOLS_PKG=itools-0.50.5

alias pvxapp='cd $PVXAPP'
alias pv="pvxapp; source bin/activate"
alias pvxcore='cd $PVXAPP_CORE'
alias runpvxapp='pv; pvxcore; python pvxapp.py -H $PVXAPP'
alias rungunicorn='pv; pvxcore; gunicorn -t 0 -c $GUNICORN/etc/gunicorn.py pvxapp:app'
alias pvxtree='pvxcore; vi -c :Ex'
alias delpyc_pvxapp='find $PVXAPP_CORE -name "*.pyc" -exec rm {}  \;'
alias delswp_pvxapp='find $PVXAPP_CORE -name "*.swp" -exec rm {}  \;'
alias maj_wiki="pv; pvxcore; cd doc; make clean; make html"

# SSH
alias sithaque='ssh ithaque'
alias samance='ssh amance'
alias slangres='ssh langres'
alias schaource='ssh chaource'
alias tail_ith_sql="sithaque 'sudo tail -f -n 100 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |lwatch -i-"
alias tail_ith_select="sithaque 'sudo tail -f -n 200 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |ccze -A |grep -i select"
alias maj_wiki_temple="ssh pvx@temple 'bash -c \"cd wiki.provexi.fr/PvxCoreApplication && git fetch origin && git rebase origin/next && cd doc; make html;\"'"

# GIT
NEXT='~/git/next'
MASTER='~/git/master'
alias pvxcore_master="cd $MASTER/pvxcore"
alias pvxcore_next="cd $NEXT/pvxcore"
alias apply_master="pvxcore_master; git am -3  ~/git/master/patch/*"
alias apply_next="pvxcore_next; git am -3  ~/git/next/patch/*"
alias clean_master="mv $MASTER/patch/* $MASTER/applied"
alias clean_next="mv $NEXT/patch/* $NEXT/applied"
alias push_master="pvxcore_master; git push origin master; clean_master"
alias push_next="pvxcore_next; git push origin next; clean_next"
alias maj_wiki="source ~/zope212/bin/activate; pvxcore; cd doc; make clean; make html"

