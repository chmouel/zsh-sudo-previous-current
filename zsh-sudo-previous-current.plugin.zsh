#!/usr/bin/env zsh

(( ! ${+ZSH_SUDO_PREVIOUS_CURRENT_BIND} )) && typeset -g ZSH_SUDO_PREVIOUS_CURRENT_BIND='^Xs'

function _sudo_previous_current() {
    if [[ -z $BUFFER ]]; then
        zle up-line-or-history
    fi
    local current=${BUFFER}
    if [[ $current != sudo\ * ]]; then
        BUFFER="sudo ${current}"
        zle end-of-line
    fi
}

zle -N _sudo_previous_current
bindkey $ZSH_SUDO_PREVIOUS_CURRENT_BIND _sudo_previous_current
