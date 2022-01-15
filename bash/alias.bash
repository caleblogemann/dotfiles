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

#################################################
# Misc Aliases                                  #
#################################################
    alias l='ls -al'

#################################################
# Latex                                         #
#################################################
    alias rmLatex='rm *.aux(N) *.log(N) *.fls(N) *.fdb_latexmk(N) *.bbl(N) *.blg(N) *.lof(N) *.lot(N) *.toc(N) *.bcf(N) *.run.xml(N) *.nav(N) *.out(N) *.snm(N) *.sagetex.sage(N) *.sagetex.sage.py(N) *.sagetex.sout(N) *.sagetex.scmd(N), *.synctex.gz(N)'
    alias rmPython='rm *.pyc(N)'
