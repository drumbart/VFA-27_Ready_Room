
 
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}
$base_path = pwd

# Constants for slides
$slides_path = ".\Mods\aircraft\VNAO_Ready_Room\DROP_SLIDES_HERE"
$slides_url = "https://github.com/drumbart/VFA-27_Ready_Room/raw/master/slides.zip"
$slides_mask = "./slide_*.*"

# Constants for board
$board_path = ".\Mods\aircraft\VNAO_Ready_Room\Liveries\VNAO_Ready_Room\VFA-27 Royal Maces"
$board_url = "https://github.com/drumbart/VFA-27_Ready_Room/raw/master/greenieboards.zip"
$board_mask = "./RM_Greenie_Board_*.*"

### Function to check if we are where we're supposed to be before deleting or downloading stuff, takes a unique part of the expected path as param
function Verify-Path{
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$path
    )

    $actual_path = pwd
    if ($actual_path.Path.ToLower().Contains($path.ToLower())){
        return 1
    }
    else {
        Write-Output "Directory $path Does not exist"
        return 0
    }
}

### Function that removes old files based on mask, download new zip based on url, extract files to specified path and delete source after use then cd back to main directory
function Update-Directory{
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$path,
        [string]$url,
        [string]$mask
    )
    cd $path
    $real_path = pwd #Need to call pwd to be sure we got the local casing (eg: aircraft =/= Aircraft) so we don't create directories with alternate casing

    # Verify we're in the path we expected to be in
    if(Verify-Path $path){
        rm $mask
        $file_path = $real_path.Path + "\file.zip"
        Invoke-WebRequest $url -OutFile file.zip
        Write-Output "file downloaded - OK"
        Unzip $file_path $real_path.Path.ToString()
        Write-Output "Unzip  - OK"
        rm $file_path
        Write-Output "Source removed - OK"
    }
    
    cd $base_path

}

Update-Directory $slides_path $slides_url $slides_mask
Write-Output "SLIDES DONE"

Update-Directory $board_path $board_url $board_mask
Write-Output "BOARD DONE"

pause
