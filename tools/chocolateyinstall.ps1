$packageName = 'mkv-muxing-batch-gui_chocolatey'
$url = 'https://github.com/https://github.com/yaser01/mkv-muxing-batch-gui/releases/download/2.1/MKV.Muxing.Batch.GUI.x64.v2.1.Portable.zip'
$checksum = '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\MKV Muxing Batch GUI.lnk" "$unzipLocation\MKV Muxing Batch GUI\MKV Muxing Batch GUI.exe"