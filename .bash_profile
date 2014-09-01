# Additions to Path
	export PATH=$PATH:$HOME/bin;
	export PATH=/usr/local/opt/postgresql/bin:$PATH;

export JAVA_HOME=$(/usr/libexec/java_home);

export PROMPT_COMMAND='echo -ne "\033]0; ${PWD##*/}\007"';

## Aliases
alias reloadProfile=". ~/.bash_profile";
alias devdb="heroku pg:psql --app dev-apihub-relationshipone";
alias qadb="heroku pg:psql --app qa-apihub-relationshipone";
alias proddb="heroku pg:psql --app apihub-relationshipone";
alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder;";
alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles FAlSE; killall Finder;";
## Movement Aliases
alias gotoAppCloud="cd; cd r1-appcloud-ui;";
alias gotoApihub="cd; cd r1-cloud-apihub;";
alias gotoRunner="cd; cd r1-cloud-runner;";
alias gotoCC="cd; cd r1-cloud-connectors;";

# Git Complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH";




## Terminal Notes
# ifconfig - get info on network connections
# top - list processes
# ps -e list all running processes
