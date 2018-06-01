# NOTES
# don't forget to chmod +x './run-front-and-back-end-apps.sh'
# use -d if you want it to run but then detach from everything
# Send-Keys sends commands from your current terminal to the -t target
# C-m runs the text in quotes as a command
# Can send-keys to -t session_name or to -t window_name
# use -s because -t doesnt work for new window

# Run each app in a separate Window in a session called 'work'
tmux new-session -s workspace_name -n window_1_name -c ~/Projects/frontend_app \; 
send-keys -t window_1_name 'npm start' C-m \; 
new-window -n backend_app -c ~/Projects/backend_app \; 
send-keys -t backend_app 'npm start' C-m

# But tmux wants it as a 1 liner so send it like this:
tmux new-session -s workspace_name -n window_1_name -c ~/Projects/frontend_app \; send-keys -t window_1_name 'npm start' C-m \; new-window -n backend_app -c ~/Projects/backend_app \; send-keys -t backend_app 'npm start' C-m

# And the window names aren't really visible when you do ctrl+b s to view open sessions/windows,
# but we need them for send-keys to work (needs to know which window to send the keys too),
# so try without them, and assume window names are defaulted as 0, 1
tmux new-session -s workspace_name -c ~/Projects/frontend_app \; send-keys -t 0 'npm start' C-m \; new-window -c ~/Projects/backend_app \; send-keys -t 1 'npm start' C-m

# Run each app in a seaparate Pane within 1 window, in a session called 'work'
#tmux new-session -s work -n claimcdr -c ~/Projects/claimcdr \; send-keys -t claimcdr 'npm start' C-m \; split-window -v -c ~/Projects/backend-api

