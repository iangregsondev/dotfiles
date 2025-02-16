# TODO what does it do, this is for the completions BREW??
autoload -Uz compinit
compinit

# Zoxide integration
eval "$(zoxide init zsh)"

# Fzf integration
source <(fzf --zsh)

# Activate Mise
eval "$(mise activate zsh)"

# Setup k9s
export K9S_EDITOR="nvim"

# Initialize Starship
eval "$(starship init zsh)"
