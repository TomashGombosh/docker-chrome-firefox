$FOLDER=$args[0]
$PATH = Get-Location;
New-Item -ItemType Directory -Force -Path "$PATH/$FOLDER/scripts/"
Get-ChildItem -Path "./scripts\*.sh" -Recurse | Copy-Item -Destination "$PATH/$FOLDER/scripts/"