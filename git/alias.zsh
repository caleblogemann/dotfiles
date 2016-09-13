################################################################################
# Git aliases                                                                  #
################################################################################
alias g='git'

########################################
# add aliases (a)
########################################
# git add to index
alias ga='git add'
# git add all
alias gaa='git add --all'

########################################
# commit aliases (c)                   #
########################################
# git commit
alias gc='git commit'
# git commit with message
alias gcm='git commit -m'

########################################
# checkout alias (co)
########################################
# git checkout
alias gco='git checkout'

########################################
# diff aliases (d)
########################################
# git diff
alias gd='git diff'

########################################
# Fetch/pull aliases (f)
########################################
# git pull - same as git fetch merge
alias gfm='git pull'

########################################
# init aliases (i)
########################################
# init git repo
alias gi='git init'

# initialize an empty repo that will be a remote repo
# able to be pushed to from other repos
alias gib='git init --bare'

########################################
# log aliases (l)
########################################
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

########################################
# push aliases (p)
########################################
# git push
alias gp='git push'

########################################
# remote aliases (R)
########################################
# add a remote
alias gRa='git remote add'
# list all git remotes
alias gRl='git remote --verbose'

# add url to specified remote
alias gRsu='git remote set-url --add'

########################################
# status aliases (s)                   #
########################################
alias gst='git status'
