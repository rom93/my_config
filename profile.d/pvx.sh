# ==================================
#     ALIAS
# ==================================
# SSH
alias sithaque='ssh ithaque'
alias samance='ssh amance'
alias slangres='ssh langres'
alias schaource='ssh chaource'
alias tail_ith_sql="sithaque 'sudo tail -f -n 100 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |lwatch -i-"
alias tail_ith_select="sithaque 'sudo tail -f -n 200 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |ccze -A |grep -i select"
alias maj_wiki_temple="ssh pvx@temple 'bash -c \"cd wiki.provexi.fr/PvxCoreApplication && git fetch origin && git rebase origin/next && cd doc; make html;\"'"

# GIT
alias pvxcore_master='cd ~/zope212/sandboxes/master/PvxCoreApplication'
alias pvxcore_next='cd ~/zope212/sandboxes/next/PvxCoreApplication'
alias apply_master='cd  ~/zope212/sandboxes/master/PvxCoreApplication; git am -3  ~/zope212/sandboxes/master/patchs/*'
alias apply_next='cd  ~/zope212/sandboxes/next/PvxCoreApplication; git am -3  ~/zope212/sandboxes/next/patchs/*'
alias push_master='git push origin master; clean_master'
alias push_next='git push origin next; clean_next'
alias clean_master='mv ~/zope212/sandboxes/master/patchs/* ~/zope212/sandboxes/master/applied_patchs'
alias clean_next='mv ~/zope212/sandboxes/next/patchs/* ~/zope212/sandboxes/next/applied_patchs'
alias ll_master='ll ~/zope212/sandboxes/master/patch'
alias ll_next='ll ~/zope212/sandboxes/next/patch'
alias maj_wiki="source ~/zope212/bin/activate; pvxcore; cd doc; make clean; make html"


# ==================================
#              PVXAPP
# ==================================
export PVXAPP=~/pvxapp
export PVXAPP_PYTHON=$PVXAPP/bin/python
export PVXAPP_CORE=$PVXAPP/pvxcore
export PVXAPP_LIB=$PVXAPP/lib/python2.7
export PVXAPP_DOWNLOAD=$PVXAPP/download
export ITOOLS_PKG=itools-0.50.5
alias runpvxapp='cd $PVXAPP; source bin/activate; cd $PVXAPP_CORE; python pvxapp.py $PVXAPP'
alias pvxapp='cd $PVXAPP'
alias pvxappcore='cd $PVXAPP_CORE'
alias rungunicorn='cd $PVXAPP; source bin/activate; cd $PVXAPP_CORE; gunicorn -t 0 -c $GUNICORN/etc/gunicorn.py pvxapp:app'
alias pvxtree='pvxappcore; vi -c :Ex'
alias delpyc_pvxapp='find $PVXAPP_CORE -name "*.pyc" -exec rm {}  \;'
alias delswp_pvxapp='find $PVXAPP_CORE -name "*.swp" -exec rm {}  \;'
