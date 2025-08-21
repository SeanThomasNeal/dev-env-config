_work() {
  COMPREPLY=()
  local cur_word=${COMP_WORDS[COMP_CWORD]}
  local prev_word=${COMP_WORDS[COMP_CWORD - 1]}

  if [ -f "$PROJECTS_JSON" ]; then
    local options=$(cat "$PROJECTS_JSON" | jq 'keys'.[])

    if [[ ${prev_word} == "work" ]]; then
      COMPREPLY=($(compgen -W "$options" -- "$cur_word"))
    fi

    if [[ ${prev_word} == "work" && ${cur_word} == "-"* ]]; then
      COMPREPLY=($(compgen -W "-e --edit" -- "$cur_word"))
    fi

    if [[ ! ${prev_word} == "work" ]]; then
      COMPREPLY=($(compgen -W "-o --open" -- "$cur_word"))
    fi
  fi
}

complete -F _work work
