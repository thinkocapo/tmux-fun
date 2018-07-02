# chmod +x eos-dev-environment.sh

containerid=$(docker ps -a | grep eos | awk '{print $1}')
echo 'containerid ' $containerid

tmux new-session -s eos -n container -c ~/Projects/eos-epic-operating-system \; split-window -v\; send-keys -t container 'docker start ' $containerid ' --attach' C-m \; select-pane -t 0

