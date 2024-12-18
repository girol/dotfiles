# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="spaceship"

# comment

# =====================
# Custom for spaceship
# =====================

# General config
SPACESHIP_USER_SHOW="true"

# SPACESHIP_CHAR_SYMBOL="\uf1d0 " # rebel
# SPACESHIP_CHAR_SYMBOL="\uf302" # apple

SPACESHIP_CHAR_SYMBOL=">"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER @ "
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"

# Python venv/pyenv
SPACESHIP_VENV_PREFIX="(\ue606 "
SPACESHIP_VENV_COLOR="yellow"
SPACESHIP_VENV_SUFFIX=") "
SPACESHIP_PYTHON_SHOW="false"

# Kubernetes
SPACESHIP_KUBECTL_SHOW="true"
SPACESHIP_KUBECTL_VERSION_SHOW="false"

# GCloud
SPACESHIP_GCLOUD_SYMBOL="☁️ "

SPACESHIP_PROMPT_ORDER=(
    venv
    time
    dir
    git
    kubectl

    line_sep

    exec_time
    char
    jobs
)
# Disabled prompts for now
# gcp


# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    docker-compose
    docker
    poetry
)

# disabled plugins for now
#    kubectl
#    gcloud

source $ZSH/oh-my-zsh.sh

# ==== PERSONAL CONFIGURATION ===
export LOCAL_INSTALL=$HOME/.local
export LOCAL_BIN=$LOCAL_INSTALL/bin

# Python Stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src
export VIRTUALENVWRAPPER_SCRIPT=$LOCAL_BIN/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $LOCAL_BIN/virtualenvwrapper_lazy.sh

source $HOME/.aliases
source $HOME/.env
source $HOME/.functions

stty -ixon  # Disables accidental Ctrl + S terminal keystroke

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/$USER/bin/terraform terraform

# == [ WIP ] ==
# The ideal would be to complete this section from a config file or script
__start_ssh_agent  # WSL 2

# Finally
export PATH=$PATH:$LOCAL_BIN

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
