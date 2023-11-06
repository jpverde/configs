if [ -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]; then . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh; fi # added by Nix installer ]
fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZDOTDIR:-~}/.zsh_functions

#Autocompletion for git
autoload -Uz compinit && compinit

alias v=openNvim

function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

# Innit starship
eval "$(starship init zsh)"

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# Direnv initiate
export DIRENV_WARN_TIMEOUT=1h
source <(direnv hook zsh)

# Okta credentials
export OKTA_EMAIL=jperez@fluidattacks.com

# Default terminal editor
export EDITOR="nvim"


# bun completions
[ -s "/Users/jperez/.bun/_bun" ] && source "/Users/jperez/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Turso
export PATH="/Users/jperez/.turso:$PATH"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# pnpm
export PNPM_HOME="/Users/jperez/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endPROG=sg source /Users/jperez/.sourcegraph/sg.zsh_autocomplete
