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
    alias gotoDocuments='gotoHome > /dev/null; cd Documents'
    alias gotoDownloads='gotoHome > /dev/null; cd Downloads'
    alias gotoTrash='gotoHome > /dev/null; cd Trash'
    alias gotoDesktop='gotoHome > /dev/null; cd Desktop'
    alias gotoLibrary='gotoHome > /dev/null; cd Library'

    # personal projects
        alias gotoMyProjects='gotoDocuments > /dev/null; cd MyProjects'
        alias gotoDotfiles='gotoHome > /dev/null; cd dotfiles'

    # School movement aliases
        alias gotoEducation='gotoDocuments > /dev/null; cd Education'
        alias gotoUndergrad='gotoEducation > /dev/null; cd Undergraduate'
        alias gotoUndergradMath='gotoUndergrad > /dev/null; cd Mathematics'
        alias gotoUndergradCS='gotoUndergrad > /dev/null; cd Computer\ Science'
        alias gotoUndergradPhysics='gotoUndergrad > /dev/null; cd Physics'
        alias gotoUndergradGenEd='gotoUndergrad > /dev/null; cd General\ Education'
        alias gotoGrad='gotoEducation > /dev/null; cd Graduate'
        alias gotoGradMath='gotoGrad > /dev/null; cd Mathematics'
        alias gotoGradStats='gotoGrad > /dev/null; cd Statistics'
        alias gotoGradTeaching='gotoGrad > /dev/null; cd Teaching'

        # Specific classes
            alias gotoCombinatorics='gotoUndergradMath > /dev/null; cd Combinatorics'
            alias gotoArtificialIntelligence='gotoUndergradCS > /dev/null; cd ArtificialIntelligence'
            alias gotoDataStructures='gotoUndergradCS > /dev/null; cd DataStructures'
            alias gotoMechanics='gotoUndergradPhysics > /dev/null; cd Mechanics'
            alias gotoNumericalMethods='gotoUndergradMath > /dev/null; cd NumericalMethods'
            alias gotoRealAnalysis='gotoUndergradMath > /dev/null; cd RealAnalysis'
            alias gotoResearch='gotoUndergradMath > /dev/null; cd Research'
            alias gotoFoundations='gotoUndergradMath > /dev/null; cd Foundations'
            alias gotoOperatingSystems='gotoUndergradCS > /dev/null; cd OperatingSystems'
            alias gotoSpanish='gotoUndergradGenEd > /dev/null; cd Spanish'
            alias gotoPst='gotoUndergradGenEd > /dev/null; cd PstIntercultural'
            alias gotoSTAT542='gotoGradStats > /dev/null; cd STAT542ProbabilityStatisticsI'
            alias gotoMATH140='gotoGradTeaching > /dev/null; cd MATH140CollegeAlgebra'
            alias gotoMATH201='gotoGradTeaching > /dev/null; cd MATH201IntroductionToProof'
            alias gotoMATH519='gotoGradMath > /dev/null; cd MATH519MethodsAppliedMathI'
            alias gotoMATH561='gotoGradMath > /dev/null; cd MATH561NumericalAnalysisI'
            alias gotoMATH591='gotoGradMath > /dev/null; cd MATH591OrientationSeminarI'
            alias gotoMATH507='gotoGradMath > /dev/null; cd MATH507AppliedLinearAlgebra'

        # Current Classes
            alias Linear='gotoMATH507'
            alias Stats='gotoSTAT542'
            alias Orientation='gotoMATH591'
            alias Numerical='gotoMATH561'
            alias Proof='gotoMATH201'
            alias CollegeAlgebra='gotoMATH140'

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
    alias sftpIASTATE='sftp sftp.iastate.edu'
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
