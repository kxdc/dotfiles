# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dracula"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    cp
    docker
    docker-compose
    fzf
    git
    node
    npm
    nvm
    osx
    pip
    pyenv
    python
    ripgrep
    tmux
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nim'
fi

# For a full list of active aliases, run `alias`.
alias nim='nvim'
alias ls='exa -hl'

eval "$(starship init zsh)"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
export FZF_COMPLETION_TRIGGER='~~'
export FZF_DEFAULT_OPTS="--height=70% \
                         --preview='`which bat` \
                                    --style=numbers \
                                    --color=always \
                                    --line-range :500 \
                                    {}' \
                         --preview-window=up:70%:wrap"
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9
--color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9
--color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6
--color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/kxdc/.config/broot/launcher/bash/br

