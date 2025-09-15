export PROJECTS_JSON="$DEV_ENV_CONFIG_DIR/projects.json"
if [ ! -f "$PROJECTS_JSON" ]; then
  (
    echo "{"
    echo -e "\t\"config\": {"
    echo -e "\t\t\"dir\": \"$DEV_ENV_CONFIG_DIR\""
    echo -e "\t\t\"title\": \"dev-env-config\""
    echo -e "\t}"
    echo "}"
  ) >>"$PROJECTS_JSON"
fi
