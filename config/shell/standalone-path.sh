_standalone_path_first() {
  local previous_status=$? remaining_path="${PATH:+$PATH:}" path_entry
  local ordered_path="$HOME/.local/bin:$HOME/.opencode/bin"

  while [ -n "$remaining_path" ]; do
    path_entry=${remaining_path%%:*}
    remaining_path=${remaining_path#*:}
    case "$path_entry" in
      "$HOME/.local/bin"|"$HOME/.opencode/bin") ;;
      *) ordered_path="$ordered_path:$path_entry" ;;
    esac
  done

  export PATH="$ordered_path"
  return "$previous_status"
}

_standalone_path_first
