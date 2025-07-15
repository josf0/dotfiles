#!/usr/bin/zsh
eval "$(pyenv init -)"
pyenv shell 3.12
comfy launch &
DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve &
