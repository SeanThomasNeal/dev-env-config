export PROJECTS_JSON="$DEV_ENV_CONFIG_DIR/projects.json"
if [ ! -f "$PROJECTS_JSON" ]; then
  echo "{}" >>"$PROJECTS_JSON"
fi
