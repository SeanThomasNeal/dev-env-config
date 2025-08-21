function work() {
  if [[ "$1" = @("-e"|"--edit") ]]; then
    nvim "$PROJECTS_JSON"
    exit 0
  fi

  PROJECT_DIR=$(cat $PROJECTS_JSON | jq .["\"$1\""].dir | tr -d '"')
  PROJECT_TITLE=$(cat $PROJECTS_JSON | jq .["\"$1\""].title | tr -d '"')

  if [[ ! -d "$PROJECT_DIR" ]]; then
    echo "Directory doesn't exist - $PROJECT_DIR"
    exit 1
  fi

  cd "$PROJECT_DIR"

  if [[ -f "$(pwd)/.nvmrc" ]]; then
    nvm use
  fi

  if [[ "$2" = @("-o"|"--open") ]]; then
    set_title $PROJECT_TITLE
    nvim .
  else
    set_title "$PROJECT_TITLE (CLI)"
  fi
}

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
