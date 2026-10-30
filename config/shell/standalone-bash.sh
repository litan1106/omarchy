source "$HOME/.config/shell/standalone-path.sh"

# Mise refreshes PATH at prompts and directory changes.
if [[ $(declare -p PROMPT_COMMAND 2>/dev/null) == "declare -a"* ]]; then
  [[ " ${PROMPT_COMMAND[*]} " == *" _standalone_path_first "* ]] || PROMPT_COMMAND+=(_standalone_path_first)
elif [[ ${PROMPT_COMMAND-} != *"_standalone_path_first"* ]]; then
  PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }_standalone_path_first"
fi

standalone_chpwd_hooks=()
for standalone_hook in "${chpwd_functions[@]}"; do
  if [[ $standalone_hook != "_standalone_path_first" ]]; then
    standalone_chpwd_hooks+=("$standalone_hook")
  fi
done
chpwd_functions=("${standalone_chpwd_hooks[@]}" _standalone_path_first)
unset standalone_hook standalone_chpwd_hooks
