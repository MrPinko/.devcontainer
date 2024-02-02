if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

starship init fish | source

# Default bindings but bind Search Directory to Ctrl+F
# note: Ctrl+r for history
fzf_configure_bindings --directory=\cf

abbr -a gp 'git pull'
abbr -a ga 'git add'
abbr -a gc 'git commit -m ""'

abbr -a ni 'npm i'