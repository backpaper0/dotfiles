# Rust
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library/

# Ruby
eval "$(rbenv init -)"
# Node
eval "$(nodenv init -)"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

#brew --prefix xxxが遅すぎる、、、
#PATH=$(brew --prefix universal-ctags)/bin:$PATH
#PATH=$(brew --prefix curl)/bin:$PATH
#PATH=$(brew --prefix openssl)/bin:$PATH
PATH=/usr/local/opt/universal-ctags/bin:$PATH
PATH=/usr/local/opt/curl/bin:$PATH
PATH=/usr/local/opt/openssl/bin:$PATH

PATH=$HOME/.local/bin:$PATH
PATH=$HOME/apache-jmeter-5.3/bin/:$PATH
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
  # awk '!a[$0]++'
  # - a[<KEY>]は連想配列。キーとなっている$0は行全体を表す
  # - !は否定。重複している行があれば値がインクリメントされて0ではなくなるのでfalseと評価される
  # - printが書かれていないので行全体が出力される
  # - 以上のことから重複を排除できている
  BUFFER=$(history -n 1 | tail -r | awk '!a[$0]++' | peco)
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N select_from_history_with_peco
bindkey '^r' select_from_history_with_peco

# GnuPG
export GPG_TTY=$(tty)

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
