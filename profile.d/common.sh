# ==================================
#     PROMPT
# ==================================
TXTRST='\[\e[0m\]'    # Text Reset
TXTRED='\[\e[0;31m\]' # Yellow
TXTGRN='\[\e[0;32m\]' # Green
TXTYLW='\[\e[0;33m\]' # Yellow
TXTBLU='\[\e[0;34m\]' # Purple
TXTPUR='\[\e[0;35m\]' # Purple
TXTCYN='\[\e[0;36m\]' # Cyan
BGRST='\[\033[00m\]' # Background reset
BGGRE='\[\033[01;30;47m\]'
BGGRERED='\[\033[01;31m\]'
BGGREBOLD='\[\033[01;39m\]'

PS1="$BGGRE[\t]\u@$BGGREBOLD\h$BGGRE:\w$BGGREBOLD\$$BGRST "


# ==================================
#     ALIAS
# ==================================
# GIT
alias gig='git grep'
alias gia='git add'
alias gid='git diff'
alias gif='git fetch'
alias gip='git format-patch -o ../patch/'
alias girn='gif; git rebase origin/next'
alias girm='gif; git rebase origin/master'
alias gifpn='git format-patch -o ../patch/ origin/next'
alias gifpm='git format-patch -o ../patch/ origin/master'
alias gipn='girn; gifpn'
alias gipm='girm; gifpm'
alias gib='git branch -av'
alias gil='git log'
alias gis='git status'
alias gica='git commit -a'
alias gic='git commit'
alias gick='git checkout'
alias gidc='git diff --check'

# DIVERS
alias ll='ls -lh'
alias run_python_server="python -m SimpleHTTPServer 9900"
alias vis='vi -S ~/.vim/session.vim'

# ==================================
#       WORKSTATION SETUP
# ==================================

# # PREALABLE
# visudo
#     %sudo   ALL=NOPASSWD: ALL
# adduser rcr sudo
# apt-get update

# # DIVERS
# sudo apt-get install git chromium-browser rxvt-unicode-256color terminator conky-all vlc revelation
# ln -s my_config/firefox/pentadactylrc .pentadactylrc

# # GIT
# git config --global user.name "rcr"; git config --global user.email "";git config --global color.branch auto; git config --global color.diff auto; git config --global color.status auto
# cd ~; git clone https://github.com/rom93/my_config.git; cd my_config;
# git remote rm origin; git remote add origin git@github.com:rom93/my_config.git
# # Add ssh key

 # CONKY
# cd ~/dowload; wget https://launchpad.net/~conky-companions/+archive/ppa/+files/conkyforecast_2.20_all.deb; sudo dpkg -i conkyforecast_2.20_all.deb; mkdir ~/tmp;
# ln -s my_config/conky/conkyForecast.config .conkyForecast.config; ln -s my_config/conky/conkyrc .conkyrc;
