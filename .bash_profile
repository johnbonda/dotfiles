# vim bindings in zsh
set -o vi

#Environment Variables
export JAVA_HOME=/Users/johnbonda/Library/Java/JavaVirtualMachines/openjdk-16.0.1/Contents/Home
export MAVEN_HOME=/Users/johnbonda/devtools/apache-maven-3.8.1
export M2_HOME=$MAVEN_HOME

# Path exports
export PATH=$PATH:$MAVEN_HOME/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/Users/johnbonda/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:/Users/johnbonda/scripts/path

# Aliases
alias vim=nvim

# Customized bash prompt
PS1="\e[0;35m\u\e[0m [\e[1;36m\w\e[0m]\$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

