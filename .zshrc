# Go Home
alias gh='cd $HOME'
# Go to thinkocapo's github repo's
alias gt='cd $HOME/thinkocapo'

# Re-load the shell with updated .zshrc
alias resource='source ~/.zshrc'


# List by Date
alias lsd='ls -ltr | awk {'"'"'print $6 " " $7 " | " $9 '"'"'}'
# list aligned
alias lsl='ls -l'
# list directories
alias dir='ls -l | grep ^d'


# Run the internet
# alias i='open -a "Google Chrome" $2.com'
alias i='./Google\ Chrome www.$1.com'


# see processes running in user wcap's space
alias wcap='ps -f -u wcap | more'
# show processes by CPU usage
alias cpu='top -u'
# show process tree
alias pstree='pstree | more'





#### TMUX
alias sysadmin='$HOME/thinkocapo/tmux-fun/sysadmin.sh'

alias tls='tmux list-sessions'