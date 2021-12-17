source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
# precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# Load completion files from the ~/.zsh directory.
#zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

bindkey \^U backward-kill-line

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vi='vim'

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias g='git'

setopt glob_dots # allow globbing for hidden files/dirs
setopt glob_star_short # allow ** to be globbed like **/*

export GIT_EDITOR=vi
export DANGER_GITHUB_API_TOKEN=25d6aafeb9a901ff43ab7d5211a71b928f4ddef8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=${HOME}/.rbenv/bin:${HOME}/bin:/usr/local/bin:${HOME}/Library/Android/sdk/platform-tools/:${HOME}/Library/Android/sdk/tools/bin/:/Applications/"Android Studio.app"/Contents/jre/Contents/Home/bin:${PATH}

export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jre/Contents/Home

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

