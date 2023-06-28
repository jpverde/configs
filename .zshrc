if [ -e /nix/var/nix/profiles/default/etc/profile.d/nix.sh ]; then . /nix/var/nix/profiles/default/etc/profile.d/nix.sh; fi # added by Nix installer ]

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
