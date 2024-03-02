#!/bin/zsh

# Create zsh directories
mkdir -p ./.zsh.d/prompts
mkdir -p ./.zsh.d/plugins

# Install powerlevel10k prompt
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ./.zsh.d/prompts/powerlevel10k
ln -s powerlevel10k/prompt_powerlevel10k_setup ./.zsh.d/prompts/prompt_powerlevel10k_setup

