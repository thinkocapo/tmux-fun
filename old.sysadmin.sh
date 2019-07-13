# tmux new-session -s sysadmin -n processes -c ~/Projects/eos-epic-operating-system \; split-window -v\; send-keys -t container 'docker start ' $containerid ' --attach' C-m \; select-pane -t 0
tmux new-session -s sysadmin \;
tmux new-window -n processes
#\; split-window -v\; send-keys -t container 'docker start ' $containerid ' --attach' C-m \; select-pane -t 0

