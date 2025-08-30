function Set-Title {
  param(
    [string]$Title
  )

  $host.UI.RawUi.WindowTitle = $Title
}
