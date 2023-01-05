# HomeBrew

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export ZPLUG_HOME=/opt/homebrew/opt/zplug
export LSCOLORS="Gxfxcxdxbxegedabagacab"
export PATH="/usr/local/opt/node@16/bin:$PATH"
export READ_DOT_ENV_FILE=true





fpath+=~/.zfunc
source $ZPLUG_HOME/init.zsh

export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=~/.zsh_history # Where it gets saved
setopt append_history # Don't overwrite, append!
setopt INC_APPEND_HISTORY # Write after each command
setopt hist_expire_dups_first # Expire duplicate entries first when trimming history.
setopt hist_fcntl_lock # use OS file locking
setopt hist_ignore_all_dups # Delete old recorded entry if new entry is a duplicate.
setopt hist_reduce_blanks # Remove superfluous blanks before recording entry.
setopt hist_save_no_dups # Don't write duplicate entries in the history file.
setopt share_history # share history between multiple shells
setopt HIST_IGNORE_SPACE # Don't record an entry starting with a space.



zplug "lib/completion", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug "themes/robbyrussell", from:oh-my-zsh, as:theme
zplug load

alias setproxy="export https_proxy=http://127.0.0.1:8002; export http_proxy=http://127.0.0.1:8002; export all_proxy=http://127.0.0.1:8002; echo 'Set proxy successfully'"
alias unsetproxy="unset http_proxy; unset https_proxy; unset all_proxy; echo 'Unset proxy successfully'"
alias ip="curl myip.ipip.net"
alias ls="ls -lrhG"
alias duc=" du -cksh -- *(D) |sort -rh"
alias dt="cd ~/Desktop"
alias format="pre-commit run --all"
alias pycharm='open -na "PyCharm.app" --args "$@"'
alias history='history 1000'
alias reload='source ~/.zshrc'
alias ac='source venv/bin/activate'
alias alhead="alembic upgrade head"
alias pbpwd="pwd | tr -d '\n' | pbcopy"
alias els="ls -l | sed -n 2p | awk '{print \$NF}'|tr -d '\n' |pbcopy"
alias restart="sudo shutdown -r now"
alias pipup="pip install --upgrade pip"export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=/Users/herui/.tiup/bin:$PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home

gitpush() {
    git add .
    git commit -m "$*"
    git push --set-upstream origin $(git branch --show-current)
}
alias gacp=gitpush


gitcpush() {
    git add .
    git commit --amend --no-edit
    git push -f --set-upstream origin $(git branch --show-current)
}
alias gacap=gitcpush
alias gaa="git add . &&  git commit --amend --no-edit"
function gtp() { git tag "$1"; git push origin "$1"; }
alias gpl='git pull'
alias cl='git clean -fd'
export PATH=/opt/homebrew/bin:/Users/herui/Desktop/iam-be/venv/bin:/usr/local/opt/mysql-client/bin:/Users/herui/.tiup/bin:/usr/local/sbin:/usr/local/opt/node@14/bin:/usr/local/Cellar/zplug/2.4.2/bin:/usr/local/opt/node@16/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Library/Frameworks/Python.framework/Versions/3.7/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/share/dotnet:~/.dotnet/tools

function gtpi() {
    git pull &> /dev/null
    LATEST_TAG=$(git tag | sort -V | awk 'END {print}')
    PREFIX_TAG=$(echo $LATEST_TAG | rev | cut -d'.' -f 2-4 | rev)
    SEQ=$(echo $LATEST_TAG | rev | cut -d'.' -f1 | rev)
    NEXT_SEQ=$(( $SEQ + 1 ))
    LATEST_TAG=${PREFIX_TAG}.${NEXT_SEQ}
    echo $LATEST_TAG
    git tag $LATEST_TAG
    git push origin $LATEST_TAG
}

alias gtpi=gtpi

alias gpr3="tea pr c -a JingWANG,HongyangLIU"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YESexport OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH="/usr/local/opt/libpq/bin:$PATH"

export pip='/Library/Frameworks/Python.framework/Versions/3.9/bin/pip3'
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

alias uph="alembic upgrade head"
alias ud1="alembic downgrade -1"