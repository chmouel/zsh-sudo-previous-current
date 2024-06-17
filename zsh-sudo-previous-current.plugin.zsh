#!/usr/bin/env zsh

(( ! ${+ZSH_SUDO_PREVIOUS_CURRENT_BIND} )) && typeset -g ZSH_SUDO_PREVIOUS_CURRENT_BIND='^Xs'
(( ! ${+ZSH_SUDO_PREVIOUS_CURRENT_CMD} )) && typeset -g ZSH_SUDO_PREVIOUS_CURRENT_CMD='sudo'

function _sudo_previous_current() {
    local cursor=$CURSOR
    if [[ -z $BUFFER ]]; then
        zle up-line-or-history
    fi
    local current=${BUFFER}
    if [[ $current != ${ZSH_SUDO_PREVIOUS_CURRENT_CMD}\ * ]]; then
        BUFFER="${ZSH_SUDO_PREVIOUS_CURRENT_CMD} ${current}"
        CURSOR=$(( cursor + ${#ZSH_SUDO_PREVIOUS_CURRENT_CMD} + 1 ))
    fi
}

zle -N _sudo_previous_current
bindkey $ZSH_SUDO_PREVIOUS_CURRENT_BIND _sudo_previous_current
