$packageName = 'mkv-muxing-batch-gui_chocolatey'
$url = 'https://github.com//yaser01/mkv-muxing-batch-gui/releases/download/2.1/MKV.Muxing.Batch.GUI.x32.v2.1.Portable.zip'
$checksum = '4c5e37f11d97beb0013c70add74eae6fdb84f4570384579210a7243ae6b54422'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\MKV Muxing Batch GUI.lnk" "$unzipLocation\MKV Muxing Batch GUI\MKV Muxing Batch GUI.exe"