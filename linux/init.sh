# Setup

export XDG_CONFIG_HOME="$DEV_ENV_CONFIG_DIR/config"
export PROJECTS_JSON="$DEV_ENV_CONFIG_DIR/projects.json"
if [ ! -f "$PROJECTS_JSON" ]; then
  (
    echo "{"
    echo -e "\t\"config\": {"
    echo -e "\t\t\"dir\": \"$DEV_ENV_CONFIG_DIR\","
    echo -e "\t\t\"title\": \"dev-env-config\""
    echo -e "\t}"
    echo "}"
  ) >>"$PROJECTS_JSON"
fi

# Aliases

alias vim="nvim"
alias vi="nvim"

# Scripts

SCRIPTS_DIR="$DEV_ENV_CONFIG_DIR/linux/scripts"

. $SCRIPTS_DIR/set_title.sh
. $SCRIPTS_DIR/work.sh
