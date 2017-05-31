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
        alias gotoTeXPackages='gotoMyProjects > /dev/null; cd TeX/texmf/tex/latex'
        alias tPackages='gotoTeXPackages'
        alias gotoDotfiles='gotoHome > /dev/null; cd dotfiles'
        alias dotfiles='gotoDotfiles'

    # School movement aliases
        alias gotoEducation='gotoDocuments > /dev/null; cd Education'
        alias gotoUndergrad='gotoEducation > /dev/null; cd Undergraduate'
        alias gotoUndergradMath='gotoUndergrad > /dev/null; cd Mathematics'
        alias gotoUndergradCS='gotoUndergrad > /dev/null; cd Computer\ Science'
        alias gotoUndergradPhysics='gotoUndergrad > /dev/null; cd Physics'
        alias gotoUndergradGenEd='gotoUndergrad > /dev/null; cd General\ Education'
        alias gotoGrad='gotoEducation > /dev/null; cd Graduate'
        alias gotoGradCourses='gotoGrad > /dev/null; cd Courses'
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
            alias gotoSTAT542='gotoGradCourses > /dev/null; cd STAT542ProbabilityStatisticsI'
            alias gotoMATH140='gotoGradTeaching > /dev/null; cd MATH140CollegeAlgebra'
            alias gotoMATH143='gotoGradTeaching > /dev/null; cd MATH143PreCalculus'
            alias gotoMATH150='gotoGradTeaching > /dev/null; cd MATH150DiscreteMath'
            alias gotoMATH165='gotoGradTeaching > /dev/null; cd MATH165CalculusI'
            alias gotoMATH166='gotoGradTeaching > /dev/null; cd MATH166CalculusII'
            alias gotoMATH201='gotoGradTeaching > /dev/null; cd MATH201IntroductionToProof'
            alias gotoMATH267='gotoGradTeaching > /dev/null; cd MATH267DifferentialEquations'
            alias gotoMATH385='gotoGradCourses > /dev/null; cd MATH385PartialDifferentialEquations'
            alias gotoMATH507='gotoGradCourses > /dev/null; cd MATH507AppliedLinearAlgebra'
            alias gotoMATH517='gotoGradCourses > /dev/null; cd MATH517FiniteDifferenceMethods'
            alias gotoMATH519='gotoGradCourses > /dev/null; cd MATH519MethodsAppliedMathI'
            alias gotoMATH520='gotoGradCourses > /dev/null; cd MATH520MethodsAppliedMathII'
            alias gotoMATH561='gotoGradCourses > /dev/null; cd MATH561NumericalAnalysisI'
            alias gotoMATH562='gotoGradCourses > /dev/null; cd MATH562NumericalAnalysisII'
            alias gotoMATH565='gotoGradCourses > /dev/null; cd MATH565ContinuousOptimization'
            alias gotoMATH566='gotoGradCourses > /dev/null; cd MATH566DiscreteOptimization'
            alias gotoMATH590='gotoGradCourses > /dev/null; cd MATH590IndependentStudy'
            alias gotoMATH591='gotoGradCourses > /dev/null; cd MATH591OrientationSeminarI'
            alias gotoMATH592='gotoGradCourses > /dev/null; cd MATH592OrientationSeminarII'
            alias gotoMATH610='gotoGradCourses > /dev/null; cd MATH610EarlyGraduateResearch'
            alias gotoNumericalQual='gotoGradCourses > /dev/null; cd NumericalQual'
            alias gotoAppliedQual='gotoGradCourses > /dev/null; cd AppliedQual'
            alias gotoDogpack='gotoGrad > /dev/null; cd dogpack-developer'

        # Current Classes
            alias Dogpack='gotoDogpack'
            alias Orientation='gotoMATH592'
            alias Numerical='gotoNumericalQual'
            alias AppliedQual='gotoAppliedQual'
            alias Applied='gotoMATH520'
            alias Finite='gotoMATH517'
            alias EGR='gotoMATH610'
            alias Research='gotoMATH590'
            alias PreCalc='gotoMATH143'
            alias Calc1='gotoMATH165'
            alias Calc2='gotoMATH166'
            alias DiffEQ='gotoMATH267'
            alias Discrete='gotoMATH566'
            alias Continuous='gotoMATH565'
            alias PDE='gotoMATH385'

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
    alias emacs='emacs -nw'
    alias top='sudo htop'
    alias htop='sudo htop'
    alias restartAudio='sudo killall coreaudiod'
    alias sftpIASTATE='sftp sftp.iastate.edu'
    alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
    alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
    alias encryptLogin='openssl des3 -salt -out Logins.x -in Logins.txt;'
    alias decryptLogin='openssl des3 -salt -d -in Logins.x -out Logins.txt'
    alias l='ls -al'
    alias mmv='noglob zmv -W'
    alias scipy='ipython --pylab'
    alias plotdog1='python $DOGPACK/viz/python/plotdog1.py'

#################################################
# Latex                                         #
#################################################
    setopt null_glob # set null_glob so that rm still runs if pattern is not matched
    alias rmLatex='rm *.aux(N) *.log(N) *.fls(N) *.fdb_latexmk(N) *.bbl(N) *.blg(N) *.lof(N) *.lot(N) *.toc(N) *.bcf(N) *.run.xml(N) *.nav(N) *.out(N) *.snm(N) *.sagetex.sage(N) *.sagetex.sage.py(N) *.sagetex.sout(N) *.sagetex.scmd(N)'
