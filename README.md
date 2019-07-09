# tmux-fun
A collection of my favorite shell and tmux scripts

![SessionsView](/img/sessions-view.png)

## Setup

`alias sys='$ABSOLUTE_PATH/shell-script-that-calls-tmux.sh'`
`alias sys='./sysadmin.sh`

example...for use with alias
```
tmux new-session -s eos -n container -c ~/Projects/eos-epic-operating-system \; split-window -v\; send-keys -t container 'docker start ' $containerid ' --attach' C-m \; select-pane -t 0
```
## Run

aliases...

## Cheatsheet
Enter command mode
Ctrl + b :

Get info on open sessions < windows panes <
tmux info

tmux list-sessions

tmux detach

tmux list-sessions

tmux attach

tmux new-window -n name_of_window

next window
ctrl+b n


tmux kill-session -t sysadmin

oLD
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "https://github.com/thinkocapo"


