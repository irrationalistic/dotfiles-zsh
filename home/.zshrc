#      d8888888P .d88888b  dP     dP   888888ba   a88888b.
#           .d8' 88.    "' 88     88   88    `8b d8'   `88
#         .d8'   `Y88888b. 88aaaaa88a a88aaaa8P' 88
#       .d8'           `8b 88     88   88   `8b. 88
#   dP d8'       d8'   .8P 88     88   88     88 Y8.   .88
#   88 Y8888888P  Y88888P  dP     dP   dP     dP  Y88888P'
#
#
#   author: Chris Rolfs


#    888888ba   888888ba   88888888b d8888888P d888888P  .88888.
#    88    `8b  88    `8b  88             .d8'    88    d8'   `8b
#   a88aaaa8P' a88aaaa8P' a88aaaa       .d8'      88    88     88
#    88         88   `8b.  88         .d8'        88    88     88
#    88         88     88  88        d8'          88    Y8.   .8P
#    dP         dP     dP  88888888P Y8888888P    dP     `8888P'
#
#


# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


#Source OPP - for better vim
source ~/opp.zsh/opp.zsh

#Source NVM
export NVM_DIR=$(brew --prefix)/var/nvm
source $(brew --prefix nvm)/nvm.sh


#    .d888888  dP        dP  .d888888  .d88888b   88888888b .d88888b
#   d8'    88  88        88 d8'    88  88.    "'  88        88.    "'
#   88aaaaa88a 88        88 88aaaaa88a `Y88888b. a88aaaa    `Y88888b.
#   88     88  88        88 88     88        `8b  88              `8b
#   88     88  88        88 88     88  d8'   .8P  88        d8'   .8P
#   88     88  88888888P dP 88     88   Y88888P   88888888P  Y88888P
#
#

# Common directory aliases
lp=/Users/crolfs/Projects/libraries/
mp=/Users/crolfs/Projects/meteorjs/
np=/Users/crolfs/Projects/node/
op=/Users/crolfs/Projects/other/
pp=/Users/crolfs/Projects/php/sites/
ru=/Users/crolfs/Projects/refactoru/
up=/Users/crolfs/Projects/unity/

# Alias for making a directory and cd'ing into it
alias md='mkdcd'

# Automatically 'ls' when changing a directory
# function chpwd() {
#     emulate -L zsh
#     ls -a
# }

# Trash node app for sending things to trash instead of rm
alias t='trash'

# Nodemon process runner
alias nm='nodemon'

# TheFuck Alias
alias fuck='$(thefuck $(fc -ln -1))'

# Override git aliases
alias gcm='git commit -m'
alias gaa='git add -A'
alias gcma='gaa && gcm'
alias gph='git push heroku master'
alias gss='git status -s'
alias glo='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias gl='git pull'

# View the history
h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }

# Sublime text
alias st='subl'
alias stt='subl .'
alias s='st'
alias s.='stt'
alias a='atom'
alias a.='atom .'
alias v='mvim'


# Environment variables
export NODE_ENV=development


# Set the path
export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/usr/local/sbin:$PATH:/bin:/sbin:
export PATH=/usr/local/heroku/bin:$PATH

# Set the node path
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules


#Built in editor:
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


#    .88888.   888888ba  d888888P dP  .88888.  888888ba  .d88888b
#   d8'   `8b  88    `8b    88    88 d8'   `8b 88    `8b 88.    "'
#   88     88 a88aaaa8P'    88    88 88     88 88     88 `Y88888b.
#   88     88  88           88    88 88     88 88     88       `8b
#   Y8.   .8P  88           88    88 Y8.   .8P 88     88 d8'   .8P
#    `8888P'   dP           dP    dP  `8888P'  dP     dP  Y88888P


# Typing directory name will automatically cd to it
setopt AUTO_CD

# ??
setopt AUTO_NAME_DIRS

# Expand glob
setopt GLOB_COMPLETE
# setopt NO_CASE_GLOB
setopt NUMERIC_GLOB_SORT
setopt EXTENDED_GLOB

# Directory navigation
setopt PUSHD_MINUS
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS

# ??
setopt ZLE
setopt NO_HUP
setopt IGNORE_EOF

# Completion
# setopt COMPLETE_IN_WORD
# setopt MENU_COMPLETE

# Delay for deletes
setopt RM_STAR_WAIT


# Automatically remove the / in ../..
setopt AUTO_REMOVE_SLASH



#   dP     dP 888888ba  .d88888b   88888888b d888888P .d88888b
#   88     88 88    `8b 88.    "'  88           88    88.    "'
#   88     88 88     88 `Y88888b. a88aaaa       88    `Y88888b.
#   88     88 88     88       `8b  88           88          `8b
#   Y8.   .8P 88     88 d8'   .8P  88           88    d8'   .8P
#   `Y88888P' dP     dP  Y88888P   88888888P    dP     Y88888P
#
#



# ??
unsetopt LIST_AMBIGUOUS

# Disable autocorrection
unsetopt CORRECT










#
#  a88888b.  .88888.  8888ba.88ba   888888ba  dP         88888888b d888888P dP  .88888.  888888ba
# d8'   `88 d8'   `8b 88  `8b  `8b  88    `8b 88         88           88    88 d8'   `8b 88    `8b
# 88        88     88 88   88   88 a88aaaa8P' 88        a88aaaa       88    88 88     88 88     88
# 88        88     88 88   88   88  88        88         88           88    88 88     88 88     88
# Y8.   .88 Y8.   .8P 88   88   88  88        88         88           88    88 Y8.   .8P 88     88
#  Y88888P'  `8888P'  dP   dP   dP  dP        88888888P  88888888P    dP    dP  `8888P'  dP     dP
#



# # Faster! (?)
# zstyle ':completion::complete:*' use-cache 1
#
# # Better completion visual
# zstyle ':completion:*' verbose yes
# zstyle ':completion:*:descriptions' format '%B%d%b'
# zstyle ':completion:*:messages' format '%d'
# zstyle ':completion:*:warnings' format 'No matches for: %d'
# zstyle ':completion:*' group-name ''
#
# # generate descriptions with magic.
# zstyle ':completion:*' auto-description 'specify: %d'
#
# # Don't prompt for a huge list, page it!
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
#
# # Don't prompt for a huge list, menu it!
# zstyle ':completion:*:default' menu 'select=0'
#
# # Have the newer files last so I see them first
# zstyle ':completion:*' file-sort modification reverse
#
# # color code completion!!!!  Wohoo!
# zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
#
# # Don't complete stuff already on the line
# zstyle ':completion::*:(rm|vi):*' ignore-line true
#
# # Don't complete directory we are already in (../here)
# # zstyle ':completion:*' ignore-parents parent pwd
#
# # zstyle ':completion::approximate*:*' prefix-needed false
#
# zstyle ':completion:*' matcher-list 'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'
#


#    a88888b. dP     dP  888888ba  .d88888b   .88888.   888888ba
#   d8'   `88 88     88  88    `8b 88.    "' d8'   `8b  88    `8b
#   88        88     88 a88aaaa8P' `Y88888b. 88     88 a88aaaa8P'
#   88        88     88  88   `8b.       `8b 88     88  88   `8b.
#   Y8.   .88 Y8.   .8P  88     88 d8'   .8P Y8.   .8P  88     88
#    Y88888P' `Y88888P'  dP     dP  Y88888P   `8888P'   dP     dP
#
#

#function zle-keymap-select zle-line-init
#{
    ## change cursor shape in iTerm2
    #case $KEYMAP in
        #vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
        #viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
    #esac

    #zle reset-prompt
    #zle -R
#}

#function zle-line-finish
#{
    #print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
#}

#zle -N zle-line-init
#zle -N zle-line-finish
#zle -N zle-keymap-select





#    888888ba  dP 888888ba  888888ba  dP     dP  88888888b dP    dP .d88888b
#    88    `8b 88 88    `8b 88    `8b 88   .d8'  88        Y8.  .8P 88.    "'
#   a88aaaa8P' 88 88     88 88     88 88aaa8P'  a88aaaa     Y8aa8P  `Y88888b.
#    88   `8b. 88 88     88 88     88 88   `8b.  88           88          `8b
#    88    .88 88 88     88 88    .8P 88     88  88           88    d8'   .8P
#    88888888P dP dP     dP 8888888P  dP     dP  88888888P    dP     Y88888P
#
#



bindkey -M vicmd "q" push-line
bindkey -M viins ' ' magic-space

# ctrl-j newline
bindkey '^n' accept-line
bindkey -a '^n' accept-line

# another rotation to match qwerty
bindkey -a 'n' down-line-or-history
bindkey -a 'e' up-line-or-history
bindkey -a 'i' vi-forward-char

# make qwerty
#bindkey -a 'k' vi-repeat-search
#bindkey -a 'K' vi-rev-repeat-search
bindkey -a 'k' vi-insert
bindkey -a 'K' vi-insert-bol
bindkey -a 'u' vi-undo-change
bindkey -a 'N' vi-join

# spare
bindkey -a 'j' vi-forward-word-end
bindkey -a 'J' vi-forward-blank-word-end

# ctrl-r history search
bindkey '^R' history-incremental-search-backward

# rebind up and down to search history by substring
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
