# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Prompts
fpath=("${ZDOTDIR:-$HOME}"/.zsh.d/prompts $fpath)
setopt PROMPT_SUBST

autoload -Uz promptinit && promptinit

prompt powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Key Bindings
bindkey -e

# Plugins
for ZSH_FILE in "${ZDOTDIR:-$HOME}"/.zsh.d/plugins/*.zsh(N); do
    source "${ZSH_FILE}"
done


