source "$HOME/.config/shell/standalone-path.sh"

autoload -Uz add-zsh-hook
add-zsh-hook -d precmd _standalone_path_first
add-zsh-hook -d chpwd _standalone_path_first
add-zsh-hook precmd _standalone_path_first
add-zsh-hook chpwd _standalone_path_first
