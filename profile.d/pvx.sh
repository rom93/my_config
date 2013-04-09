# ==================================
#     VARIABLES D'ENVIRONNEMENT
# ==================================
export GUNICORN=~/gunicorn
export GUNICORN_PYTHON=$GUNICORN/bin/python
export GUNICORN_CORE=$GUNICORN/sandboxes/PvxCoreApplication/
export GUNICORN_LIB=$GUNICORN/lib/python2.7
export GUNICORN_PYTHON=$GUNICORN/bin/python
export DOWNLOAD=~/download
export OLD_PVX_PATH=~/zope212
export ITOOLS_PKG=itools-0.50.5

# ==================================
#     ALIAS
# ==================================
# OLD PLATEFORME
alias pvxcore='cd ~/zope212/sandboxes/PvxCoreApplication/'
alias runzope='cd ~/zope212/zeo-client0; ./bin/runzope'
alias runzeo='cd ~/zope212/zeo-server; ./bin/zeoctl start'
# NEW PLATEFORME
alias runpvxapp='cd $GUNICORN; source bin/activate; cd $PVX_CORE; python pvxapp.py $GUNICORN'
alias rungunicorn='cd $GUNICORN; source bin/activate; cd $PVX_CORE; gunicorn -t 0 -c $GUNICORN/etc/gunicorn.py pvxapp:app'
alias pvxappcore='cd $PVX_CORE'
alias pvxtree='pvxappcore; vi -c :Ex'
# SSH
alias sithaque='ssh ithaque'
alias samance='ssh amance'
alias slangres='ssh langres'
alias schaource='ssh chaource'
# DEV
alias del_pyc='find $PVX_CORE -name "*.pyc" -exec rm {}  \;'
alias del_swp='find $PVX_CORE -name "*.swp" -exec rm {}  \;'
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
alias tail_ith_sql="sithaque 'sudo tail -f -n 100 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |lwatch -i-"
alias tail_ith_select="sithaque 'sudo tail -f -n 200 /usr/local/pgsql/data/pg_log/\`sudo ls -tr /usr/local/pgsql/data/pg_log/|tail -n 1\`' |ccze -A |grep -i select"
alias maj_wiki="source ~/zope212/bin/activate; pvxcore; cd doc; make clean; make html"
alias maj_wiki_temple="ssh pvx@temple 'bash -c \"cd wiki.provexi.fr/PvxCoreApplication && git fetch origin && git rebase origin/next && cd doc; make html;\"'"
