# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="spaceship"

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
SPACESHIP_VENV_PREFIX="(\uf81f "
SPACESHIP_VENV_COLOR="yellow"
SPACESHIP_VENV_SUFFIX=") "
SPACESHIP_PYENV_SHOW="false"

# Kubernetes
SPACESHIP_KUBECTL_SHOW="true"

SPACESHIP_PROMPT_ORDER=(
    venv
    time
    dir
    git
    exec_time
    gcloud
    kubectl

    line_sep

    char
    jobs
)


# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    docker-compose
    kubectl
    gcloud
)

source $ZSH/oh-my-zsh.sh

# ==== PERSONAL CONFIGURATION ====
export LOCAL_BIN=/home/$USER/.local/bin

# TEMP for tfswitch
TFSW_BIN=/home/$USER/bin

export PATH=$PATH:$LOCAL_BIN

source $HOME/.aliases
source $HOME/.env
source $HOME/.functions

stty -ixon  # Disables accidental Ctrl + S terminal keystroke

# [ WIP ]
# The ideal would be to complete this section from a config file or script
__start_ssh_agent  # WSL 2

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
