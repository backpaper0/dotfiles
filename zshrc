
# Ruby
eval "$(rbenv init -)"
# Node
eval "$(nodenv init -)"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

PATH=$JAVA_HOME/bin:$PATH
export PATH

# 秘密な値を読み込む
# このファイルはバージョン管理していない
source ~/secret/secret_variables

# ターミナルでviっぽい操作ができるように
set -o vi

# lsに色を付ける
export CLICOLOR=true

# 補完を有効化
autoload -U compinit
compinit -u

# ctrl + rでpecoを用いたコマンド履歴検索を行う
function select_from_history_with_peco() {
  BUFFER=$(history -n 1 | peco)
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N select_from_history_with_peco
bindkey '^r' select_from_history_with_peco
