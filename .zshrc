bindkey -v
bindkey '^R' history-incremental-search-backward

#Environment Variables
#export JAVA_HOME=/Users/johnbonda/Library/Java/JavaVirtualMachines/openjdk-16.0.1/Contents/Home
#export JAVA_HOME=/Users/johnbonda/devtools/jdk8u302-b08/Contents/Home
export JAVA_HOME=/Users/johnbonda/devtools/jdk-16.0.2.jdk/Contents/Home
export MAVEN_HOME=/Users/johnbonda/devtools/apache-maven-3.8.1
export M2_HOME=$MAVEN_HOME
export GRADLE_HOME=/Users/johnbonda/devtools/gradle-7.1.1

# Path exports
export PATH=$PATH:$MAVEN_HOME/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/Users/johnbonda/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:/Users/johnbonda/scripts/path
export PATH=$PATH:/Users/johnbonda/devtools/mongodb-macos-x86_64-4.4.6/bin
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS

# Aliases
alias vim=nvim
alias ls='ls --color=auto'

# Customized bash prompt
PROMPT="%F{magenta}%n%f[%F{cyan}%c%f] "

# ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
