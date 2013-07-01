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
alias apply_next_mz='cd  ~/zope212/sandboxes/next/PvxCoreApplication; git am -3  ~/zope212/sandboxes/mz/patchs/*'
alias apply_mz='cd  ~/zope212/sandboxes/mz/PvxCoreApplication; git am -3  ~/zope212/sandboxes/mz/patchs/*'
alias push_master='git push origin master; clean_master'
alias push_next='git push origin next; clean_next'
alias push_next_mz='git push origin next'
alias push_mz='git push origin migration_zope;clean_mz'
alias clean_master='mv ~/zope212/sandboxes/master/patchs/* ~/zope212/sandboxes/master/applied_patchs'
alias clean_next='mv ~/zope212/sandboxes/next/patchs/* ~/zope212/sandboxes/next/applied_patchs'
alias clean_mz='mv ~/zope212/sandboxes/mz/patchs/* ~/zope212/sandboxes/mz/applied_patchs'
alias ll_master='ll ~/zope212/sandboxes/master/patch'
alias ll_next='ll ~/zope212/sandboxes/next/patch'
#alias maj_wiki="source ~/zope212/bin/activate; pvxcore; cd doc; make clean; make html"


# ==================================
#              PVXAPP
# ==================================
export PVXAPP=~/pvxapp
export PVXAPP_PYTHON=$PVXAPP/bin/python
export PVXAPP_CORE=$PVXAPP/pvxcore
export PVXAPP_LIB=$PVXAPP/lib/python2.7
export PVXAPP_DOWNLOAD=$PVXAPP/download
export ITOOLS_PKG=itools-0.50.5
alias pvxapp='cd $PVXAPP'
alias pv="pvxapp; source bin/activate"
alias pvxcore='cd $PVXAPP_CORE'
alias runpvxapp='pv; pvxcore; python pvxapp.py $PVXAPP'
alias rungunicorn='pv; pvxcore; gunicorn -t 0 -c $GUNICORN/etc/gunicorn.py pvxapp:app'
alias pvxtree='pvxcore; vi -c :Ex'
alias delpyc_pvxapp='find $PVXAPP_CORE -name "*.pyc" -exec rm {}  \;'
alias delswp_pvxapp='find $PVXAPP_CORE -name "*.swp" -exec rm {}  \;'
alias maj_wiki="pv; pvxcore; cd doc; make clean; make html"
