$packageName = 'mkv-muxing-batch-gui_chocolatey'
$url = 'https://github.com/yaser01/mkv-muxing-batch-gui/releases/download/1.0.5/MKV.Muxing.Batch.GUI.Portable.x64.zip'
$checksum = '41b2bd1e2c86faa6ad81499716807ef7fee49831aebfa6803b8ddbc2b41e50e8'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\MKV Muxing Batch GUI.lnk" "$unzipLocation\MKV Muxing Batch GUI\MKV Muxing Batch GUI.exe"