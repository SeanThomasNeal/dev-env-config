$PROJECTS_JSON="$DEV_ENV_CONFIG_DIR/projects.json"
if (!(Test-Path -Path "$PROJECTS_JSON" -PathType Leaf)) {
  "{}" | Out-File -FilePath "$PROJECTS_JSON" -Encoding ascii -Append
}
