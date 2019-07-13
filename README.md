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
tmux
[0] 0:zsh* means session 0 and 0th window called zsh

Get info on open sessions < windows panes <
tmux info

tmux list-sessions

tmux new-window -n name_of_window

tmux split-window-v
tmux send-keys -t 0 'echo yo' <--- sends command to previous pane

Enter command mode
Ctrl + b
Ctrl + b + n for next window
Ctrl + b + ? for change session, or can tmux detach; tmux attach -t session_name, but that's a lot of work. tmux "re-attach"


tmux detach
tmux kill-session -t sysadmin
tmux attach



////////////////////////////////
OLD
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "https://github.com/thinkocapo"


