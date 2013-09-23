$files =
(
    "\\pc-kharper\c$\Temp"
)

$backupDir = "\\nyprodfs01\profiles$\kharper\Backup"

if (!(Test-Path $backupDir))
{
    mkdir $backupDir
}

foreach ($file in $files)
{
    cp -Force -Recurse $file $backupDir
}
