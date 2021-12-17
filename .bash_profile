# vim bindings in zsh
set -o vi

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

# Customized bash prompt
PS1="\[\e[35m\]\u\[\e[m\] [\[\e[36m\]\w\[\e[m\]]\\$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
