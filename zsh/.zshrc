source $HOME/.zprezto/runcoms/zshrc

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%F{blue} %f%F{magenta}%b%f '

setopt PROMPT_SUBST

PROMPT='%n@%M %F{blue}%~%f ${vcs_info_msg_0_}$ '

eval "$(mise activate zsh)"

alias bp='nvim ~/.zshrc'
alias sa='source ~/.zshrc;echo "ZSH aliases sourced."'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(zoxide init zsh)"
source <(fzf --zsh)

