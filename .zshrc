
export LANG=ja_JP.UTF-8

# 補完する
autoload -U compinit
compinit

# 色をつける
autoload -U colors; colors

# ls に色を付ける。ls -G と同じ意味。詳しくは man ls 読む。
export CLICOLOR=true



# git のブランチ名を zsh の右プロンプトに表示＋ status に応じて色もつけてみた - ヤルキデナイズドだった
# http://d.hatena.ne.jp/uasi/20091017/1255712789

function rprompt-git-current-branch {
        local name st color

        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi
        name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
        if [[ -z $name ]]; then
                return
        fi
        st=`git status 2> /dev/null`
        if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
                color=${fg[green]}
        elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
                color=${fg[yellow]}
        elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
                color=${fg_bold[red]}
        else
                color=${fg[red]}
        fi

        # %{...%} は囲まれた文字列がエスケープシーケンスであることを明示する
        # これをしないと右プロンプトの位置がずれる
        echo "%{$color%}$name%{$reset_color%} "
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'



PROMPT="%{${fg[magenta]}%}%n%% %{${reset_color}%}"

# 補完関数ファイル置き場を追加する
fpath=(~/dotfiles/.zsh/site-functions $fpath)
export fpath

# キーバインドをvi挿入モードっぽいやつにする
bindkey -v


# vim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim -u $HOME/.vimrc "$@"'

# Java
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
export JAVA_HOME

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

MAVEN_OPTS=-Dfile.encoding=UTF-8
export MAVEN_OPTS

# Path
PATH=/usr/local/bin:$PATH
PATH=/usr/local/Cellar/git/2.1.0/bin:$PATH
PATH=~/kotlinc/bin:$PATH
PATH=~/apache-ant-1.9.3/bin:$PATH
PATH=~/apache-maven-3.2.2/bin:$PATH
PATH=$JAVA_HOME/bin:$PATH
PATH=~/bin:$PATH
export PATH

# その他
alias ll='ls -l'

