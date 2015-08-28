#################################################
# ZSH Aliases                                   #
#################################################
    alias reloadZSHRC='source ~/.zshrc'
    alias openZSHRC='vim ~/.zshrc'
    alias reloadZSHENV='source ~/.zshenv'
    alias openZSHENV='vim ~/.zshenv'
    alias reloadAlias='source ~/dotfiles/zsh/alias.zsh'
    alias openAlias='vim ~/dotfiles/zsh/alias.zsh'

#################################################
# Movement Aliases                              #
#################################################
    alias gotoHome='cd $HOME'
    alias gotoDocuments='gotoHome; cd Documents'
    alias gotoDownloads='gotoHome; cd Downloads'
    alias gotoTrash='gotoHome; cd Trash'
    alias gotoDesktop='gotoHome; cd Desktop'
    alias gotoLibrary='gotoHome; cd Library'

    # personal projects
        alias gotoMyProjects='gotoDocuments; cd MyProjects'
        alias gotoDotfiles='gotoHome; cd dotfiles'

    # School movement aliases
        alias gotoEducation='gotoDocuments; cd Education'
        alias gotoUndergrad='gotoEducation; cd Undergraduate'
        alias gotoUndergradMath='gotoUndergrad; cd Mathematics'
        alias gotoUndergradCS='gotoUndergrad; cd Computer\ Science'
        alias gotoUndergradPhysics='gotoUndergrad; cd Physics'
        alias gotoUndergradGenEd='gotoUndergrad; cd General\ Education'
        alias gotoGrad='gotoEducation; cd Graduate'
        alias gotoGradMath='gotoGrad; cd Mathematics'
        alias gotoGradStats='gotoGrad; cd Statistics'
        alias gotoGradTeaching='gotoGrad; cd Teaching'

        # Specific classes
            alias gotoCombinatorics='gotoUndergradMath; cd Combinatorics'
            alias gotoArtificialIntelligence='gotoUndergradCS; cd ArtificialIntelligence'
            alias gotoDataStructures='gotoUndergradCS; cd DataStructures'
            alias gotoMechanics='gotoUndergradPhysics; cd Mechanics'
            alias gotoNumericalMethods='gotoUndergradMath; cd NumericalMethods'
            alias gotoRealAnalysis='gotoUndergradMath; cd RealAnalysis'
            alias gotoResearch='gotoUndergradMath; cd Research'
            alias gotoFoundations='gotoUndergradMath; cd Foundations'
            alias gotoOperatingSystems='gotoUndergradCS; cd OperatingSystems'
            alias gotoSpanish='gotoUndergradGenEd; cd Spanish'
            alias gotoPst='gotoUndergradGenEd; cd PstIntercultural'
            alias gotoSTAT542='gotoGradStats; cd STAT542ProbabilityStatisticsI'
            alias gotoMATH140='gotoGradTeaching; cd MATH140CollegeAlgebra'
            alias gotoMATH519='gotoGradMath; cd MATH519MethodsAppliedMathI'
            alias gotoMATH561='gotoGradMath; cd MATH561NumericalAnalysisI'
            alias gotoMATH591='gotoGradMath; cd MATH591OrientationSeminarI'
            alias gotoMATH507='gotoGradMath; cd MATH507AppliedLinearAlgebra'

#################################################
# Maven Aliases                                 #
#################################################
#alias mvni='mvn install'
#alias mvnist='mvn install -D skipTests=true'
#alias mvnd='mvn deploy'
#alias mvndst='mvn deploy -D skipTests=true'
#alias mvncl='mvn clean'
#alias mvnco='mvn compile'
#alias mvncc='mvn clean compile'
#alias mvndt='mvn dependency:tree'

#################################################
# Misc Aliases                                  #
#################################################
    alias top='sudo htop'
    alias htop='sudo htop'
    alias restartAudio='sudo killall coreaudiod'
    alias sshWiebe='ssh cdl88254@wiebe.mathcs.bethel.edu'
    alias sshCluster='ssh cdl88254@cluster-frontend.mathcs.bethel.edu'
    alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
    alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
    alias encryptLogin='openssl des3 -salt -out Logins.x -in Logins.txt; rm Logins.txt;'
    alias decryptLogin='openssl des3 -salt -d -in Logins.x -out Logins.txt'
    alias l='ls -al'

#################################################
# Latex                                         #
#################################################
    setopt null_glob # set null_glob so that rm still runs if pattern is not matched
    alias rmLatex='rm *.aux(N) *.log(N) *.fls(N) *.fdb_latexmk(N) *.bbl(N)
        *.blg(N) *.lof(N) *.lot(N) *.toc(N) *.bcf(N) *.run.xml(N) *.nav(N) *.out(N) *.snm(N)'
