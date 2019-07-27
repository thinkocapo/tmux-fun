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

// list all open tmux
tmux list-sessions

tmux new-window -n name_of_window
tmux split-window -v

// send command to pane 0
tmux send-keys -t 0 'echo im in first window'

// send command to pane 1
tmux send-keys -t 1 'echo me second' 

// swtch back to pane 0
ctrl+b left-arrow or right-arrow
```






Command Mode
```
Ctrl + b
Ctrl + b + n for next window
Ctrl + b + [ does what?

// switch to pane up/down/left/right
ctrl+b up-arrow
ctrl+b down-arrow

// swap panes left/right
ctrl+b {
ctrl+b }
```

Attaching / detaching
```
tmux detach
tmux kill-session -t sysadmin
tmux attach
// or
tmux attach -t session_name
```

Additional
```
// Get info on open sessions < windows panes <
tmux info

// CHANGE SESSIONS (without having to ctrl+b d to exit session)
ctrl+b ( or )
// CLOSE WINDOW
ctrl_b &
// NEXT WINDOW
ctrl+b n b l next back or last
// exit tmux command mode
q
```