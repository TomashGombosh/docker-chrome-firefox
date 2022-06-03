$param1=$args[0]
$PATH = Get-Location;
mkdir -p "$PATH/$param1/scripts/"
Get-ChildItem -Path "./scripts\*.sh" -Recurse | Copy-Item -Destination "$PATH/jre-11/scripts/"