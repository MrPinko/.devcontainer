# You need to declare all the required programming language inside the Dockerfile, check TODO

# Cool site
https://github.com/jorgebucaran/awsm.fish

## native nvm for fish
https://github.com/jorgebucaran/nvm.fish
install with `fisher install jorgebucaran/nvm.fish`

# !!!!!
incompatibility with `fish fzf directory`!
disable terminal shortcut Ctrl+f

id: `workbench.action.terminal.focusFind`


# build and exec inside terminal

from the root folder:

install the cli `npm install -g @devcontainers/cli`

`devcontainer up --workspace-folder .`

enter the container by using
`docker exec -it -w /workspace/ <folderName>_devcontainer-app-1") /usr/bin/fish`

or with oneline (must run from the workspace folder)
`docker exec -it -w /workspace/ ($(Split-Path -Path $pwd -Leaf)+"_devcontainer-app-1") /usr/bin/fish`
