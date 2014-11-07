#################################################
# ZSH Aliases                                   #
#################################################
alias reloadZSHRC='. $ZDOTDIR/.zshrc'
alias openZSHRC='vim $ZDOTDIR/.zshrc'
alias reloadZProfile='. $ZDOTDIR/.zprofile'
alias openZProfile='vim $ZDOTDIR/.zprofile'
alias reloadZPreztorc='. $ZDOTDIR/.zpreztorc'
alias openZPreztorc='vim $ZDOTDIR/.zpreztorc'
alias reloadZSHENV='. $ZDOTDIR/.zshenv'
alias openZSHENV='vim $ZDOTDIR/.zshenv'
alias reloadAlias='. $ZDOTDIR/alias.zsh'
alias openAlias='vim $ZDOTDIR/alias.zsh'


#################################################
# Movement Aliases                              #
#################################################
alias gotoHome="cd $HOME"
alias gotoDocuments="gotoHome; cd Documents"
alias gotoDownloads="gotoHome; cd Downloads"

# personal projects
alias gotoCode="gotoDocuments; cd Code"
alias gotoDotfiles="gotoHome; cd .dotfiles"

# work movement aliases
alias gotoWork="gotoDocuments; cd Work"
alias gotoRunner="gotoWork; cd r1-cloud-runner"
alias gotoAppCloud="gotoWork; cd r1-appcloud-ui"
alias gotoApihub="gotoWork; cd r1-cloud-apihub"
alias gotoCC="gotoWork; cd r1-cloud-connectors"
alias gotoR1Utils="gotoCC; cd R1Utils"
alias gotoCloudConnector="gotoCC; cd CloudConnector"

# School movement aliases
alias gotoEducation="gotoDocuments; cd Education"
alias gotoCurrentClasses="gotoEducation; cd CurrentClasses"
alias gotoMechanics="gotoCurrentClasses; cd Mechanics"
alias gotoNumericalMethods="gotoCurrentClasses; cd NumericalMethods"
alias gotoRealAnalysis="gotoCurrentClasses; cd RealAnalysis"
alias gotoOperatingSystems="gotoCurrentClasses; cd OperatingSystems"

#################################################
# Heroku aliases                                #
#################################################
alias devdb="heroku pg:psql --app dev-apihub-relationshipone"
alias qadb="heroku pg:psql --app qa-apihub-relationshipone"
alias proddb="heroku pg:psql --app apihub-relationshipone"

#################################################
# Maven Aliases                                 #
#################################################
alias mvni="mvn install"
alias mvnist="mvn install -D skipTests=true"
alias mvnd="mvn deploy"
alias mvndst="mvn deploy -D skipTests=true"
alias mvncl="mvn clean"
alias mvnco="mvn compile"
alias mvncc="mvn clean compile"
alias mvndt="mvn dependency:tree"

#################################################
# Git Aliases                                   #
#################################################
alias gcam="git commit --all --message"
alias gst="git status"
alias gba="git branch -a"

#################################################
# Misc Aliases                                  #
#################################################
alias redshiftdb="psql -h test-quosity-west-01.c9lob1qejqcs.us-west-2.redshift.amazonaws.com -p 5439 -U r1development development"
alias top="sudo htop"
alias htop="sudo htop"
alias restartAudio="sudo killall coreaudiod"
alias sshWiebe="ssh cdl88254@wiebe.mathcs.bethel.edu"
alias rmLatex="rm *.aux *.log *.fls *.fdb_latexmk"
