# bash

set -o vi

PS1="\[\e[36m\]$ \[\e[0m\]"
PS2="\[\e[36m\]> \[\e[0m\]"

alias ls='ls -G'
alias ll='ls -l'


# Java

export JAVA_HOME=$(/usr/libexec/java_home -v 11)

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

export MAVEN_OPTS=-Dfile.encoding=UTF-8

export BYTEMAN_HOME=$(ls -1 -d ~/byteman-*)

# Path

PATH=/usr/local/bin:$PATH

eval "$(rbenv init -)"

PATH=/usr/local/mysql-5.7.27-macos10.14-x86_64/bin/:$PATH
PATH=/usr/local/mysql-5.7.27-macos10.14-x86_64/support-files/:$PATH
PATH=$BYTEMAN_HOME/bin:$PATH
PATH=$JAVA_HOME/bin:$PATH
PATH=$HOME/maven/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=./:$PATH
export PATH

source ~/secret/secret_variables

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
