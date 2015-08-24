
################################################################################
# History Settings
################################################################################
    # number of lines to store for one session
    export HISTSIZE=1000
    # number of lines to save in $HISTFILE
    export SAVEHIST=1000
    # file to save history of commands to
    export HISTFILE=~/dotfiles/zsh/zsh_history

    # History options
    # Append history to the end of $HISTFILE instead of overwriting history
    setopt APPEND_HISTORY
    # append each line to the history file as it is executed
    setopt INC_APPEND_HISTORY
    # set so the history stores time of command and elapsed time of command
    setopt EXTENDED_HISTORY
    # set so that all duplicate commands are not kept
    setopt HIST_IGNORE_ALL_DUPS

################################################################################
# Settings
################################################################################

# source all alias files
for aliasFile in ~/dotfiles/*/alias.zsh; do
    source $aliasFile
done
