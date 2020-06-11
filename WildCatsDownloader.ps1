
 
 Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


# C:\Users\Nicky\Saved Games\DCS.openbeta>
$path = pwd
cd .\Mods\aircraft\VNAO_Ready_Room\DROP_SLIDES_HERE
$slide_path = pwd
cd $path 
cd ".\Mods\aircraft\VNAO_Ready_Room\Liveries\VNAO_Ready_Room\VFA-27 Royal Maces"
$board_path = pwd



$bzip_path = $board_path.Path + "\boards.zip"

cd $slide_path #Go into slide directory
rm ./slide_*.*
Write-Output "Old slides removed - OK"

Invoke-WebRequest "https://github.com/drumbart/VFA-27_Ready_Room/raw/master/slides.zip" -OutFile slides.zip
Write-Output "Slides downloaded - OK"
$szip_path = $slide_path.Path + "\slides.zip"
Unzip $szip_path $slide_path.Path.ToString()
Write-Output "Unzip  - OK"
rm $szip_path
Write-Output "Source removed - OK"

cd $board_path #Go into boards directory

rm ./RM_Greenie_Board_*.*
Write-Output "Old boards removed - OK"

Invoke-WebRequest "https://github.com/drumbart/VFA-27_Ready_Room/raw/master/greenieboards.zip" -OutFile boards.zip
Write-Output "Boards downloaded - OK"
$bzip_path = $board_path.Path + "\boards.zip"
Unzip $bzip_path $board_path.Path.ToString()
Write-Output "Unzip  - OK"
rm $bzip_path
Write-Output "Source removed - OK"

pause
#if ($path.Path.ToLower().Contains("\Mods\aircraft\VNAO_Ready_Room\DROP_SLIDES_HERE".ToLower())) {
#
#}
# else {
#    Write-Output "Wrong location, place this script in Mods\aircraft\VNAO_Ready_Room\DROP_SLIDES_HERE folder and run as admin"
# }

# pause
 
 
