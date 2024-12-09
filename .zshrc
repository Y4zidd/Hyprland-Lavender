# Created by newuser for 5.9

# auto launch pfetch
pfetch

# add rustup env
export PATH="$HOME/.cargo/bin:$PATH"

# export
. "$HOME/.cargo/env"
. "$HOME/.config/zsh_plugin/emoji-char-definitions.zsh"
. "$HOME/.config/zsh_plugin/emoji.plugin.zsh"

# source
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias
alias yazid="pfetch"
alias eq="cava"
alias yt="mpv"

# starship
eval "$(starship init zsh)"

# plugin
plugins=(archlinux autoenv emoji history starship)

# bun completions
[ -s "/home/yazid/.bun/_bun" ] && source "/home/yazid/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
