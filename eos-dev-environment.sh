# chmod +x eos-dev-environment.sh

#tmux new-session -s eos -n container -c ~/eos-epic-operating-system \;
#split-window -v -c 

# function dockercommand {
#     echo HEY
# }
# define the docker stuff as Function...doesnt work...
#tmux new-session -s eos -n container -c ~/Projects/eos-epic-operating-system \; split-window -v\; send-keys -t container "$dockercommand" C-m

tmux new-session -s eos -n container -c ~/Projects/eos-epic-operating-system \; split-window -v\; send-keys -t container 'containerid=$(docker ps -a | grep eos | awk '{print $1}'); docker start $containerid --attach' C-m



# OLD
#split-window -v -c ~/Projects/eos-epic-operating-system \; select-pane -t 0
#tmux new-session \; split-window -v -c ~/Projects/eos-epic-operating-system \; select-pane -t 0


# containerid=$(docker ps -a | grep eos | awk '{print $1}')
# docker start $containerid --attach