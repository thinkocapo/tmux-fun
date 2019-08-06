tmux new-session -t ethereum \; split-window -v -c ~/Projects/full-stack-fund \; send-keys -t 0 'ganache-cli testrpc' C-m \; send-keys -t 1 'node script-v0.2.js' C-m

