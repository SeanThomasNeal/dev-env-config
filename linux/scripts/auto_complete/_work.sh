_work() {
  COMPREPLY=()
  local cur_word=${COMP_WORDS[COMP_CWORD]}
  local prev_word=${COMP_WORDS[COMP_CWORD - 1]}

  if [ -f "$PROJECT_JSON" ]; then
    local options=$(cat "$PROJECT_JSON" | jq 'keys'.[])

    if [[ ${prev_word} == "work" ]]; then
      COMPREPLY=($(compgen -W "$options" -- "$cur_word"))
    fi
  fi
}

complete -F _work work
