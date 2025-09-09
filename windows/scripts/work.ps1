function WorkProjectCompleter {
  param(
    $commandName,
    $parameterName,
    $wordToComplete,
    $commandAst,
    $fakeBoundParameters
  )

  $possibleValues = ( Get-Content "$PROJECTS_JSON" | Out-String | ConvertFrom-Json ).psobject.Properties.Name

  $possibleValues | Where-Object {
    $_ -like "$wordToComplete*"
  }
}


function Work {
  param(
    [ArgumentCompleter({ WorkProjectCompleter @args })]$ProjectName,
    [switch]$Edit,
    [switch]$Open,
    [switch]$Git
  )

  if ($Edit) {
    nvim "$PROJECTS_JSON"
    exit 0
  }

  $projects = Get-Content "$PROJECTS_JSON" | Out-String | ConvertFrom-Json
  $project = $projects."$ProjectName"
  $title = $project.title
  $directory = $project.dir

  cd $directory
  if ($Open) {
    Set-Title $title
    nvim .
  } else if ($Git) {
    GitExtensions.exe .
  } else {
    Set-Title "$title (CLI)"
    clear
  }
}
