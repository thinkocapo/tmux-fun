# tmux-fun
A collection of shell and tmux scripts

![SessionsView](/img/sessions-view.png)

https://github.com/tmux/tmux  
https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340  
https://medium.com/@jeongwhanchoi/install-tmux-on-osx-and-basics-commands-for-beginners-be22520fd95e

## Setup

```
brew install tmux

# add to .bash_profil .zshrc
alias sysadmin='$HOME/tmux-fun/sysadmin.sh
```

## Cheatsheet

Basic commands
```
// list all open tmux sessions/windows/panes
tmux list-sessions

tmux new-window -n name_of_window
tmux split-window -v

// send command to pane 0
tmux send-keys -t 0 'echo im in first window'

// send command to pane 1
tmux send-keys -t 1 'echo me second' 

// swtch back to pane 0
ctrl+b left-arrow or right-arrow

// inside tmux session it says:
`[0] 0:zsh*` which means session 0 and 0th window called zsh
```



Command Mode
```
Ctrl + b
Ctrl + b + n for next window

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

// change session=
ctrl+b ( or )

// close window
ctrl_b &

// next, back or last window
ctrl+b n or b or l

// exit tmux command mode
q

// change into a directory
tmux new-session -c ~/Projects

// change into a directory after splitting window
split-window -v -c ~/Projects/full-stack-fund
```

