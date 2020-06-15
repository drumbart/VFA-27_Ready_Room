
### creates the map

$folders_to_map = "Liveries", "KneeBoard", "Mods\Aircraft" # <= add relative path of folders to map (ex: "Mods\tech")

$base_path = pwd


[IO.FileInfo] $map_file = $base_path.Path + '\wcmap.txt'
if ($map_file.Exists){
    rm $map_file
}

function Map-Directory{
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$path
    )

    Get-ChildItem -Recurse $path | ForEach-Object {
    $gethash = Get-FileHash $_.FullName
    $hash = $gethash.Hash
    $fullName = $_.FullName.Substring($base_path.Path.Length)
    Write-Output "$hash, $fullName" >> wcmap.txt
    Write-Output $_.FullName
}

}


$folders_to_map | ForEach-Object {
    $folder = $base_path.Path +'\'+ $_
    Write-Output $folder
    Map-Directory $folder
}
