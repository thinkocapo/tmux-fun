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


## Cheatsheet

basic commands
```
tmux

// inside tmux session it says:
`[0] 0:zsh*` which means session 0 and 0th window called zsh

// Get info on open sessions < windows panes <
tmux info

// list all open tmux
tmux list-sessions

tmux new-window -n name_of_window
tmux split-window -v

// next/previous pane
ctrl+b {
ctrl+b }

// send command to pane 0
tmux send-keys -t 0 'echo you first'
// send command to pane 1
tmux send-keys -t 1 'echo me second' 
```
Enter command mode
```
Ctrl + b
Ctrl + b + n for next window
Ctrl + b + [ for change session?
tmux attach -t session_name
```

Attaching / detaching
```
tmux detach
tmux kill-session -t sysadmin
tmux attach
```

Aliases

