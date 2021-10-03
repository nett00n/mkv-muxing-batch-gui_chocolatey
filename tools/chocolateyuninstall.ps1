﻿$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$icon_name = (Get-ChildItem "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs" -Filter "MKV Muxing Batch GUI.lnk" -ErrorAction SilentlyContinue).FullName

Remove-Item $icon_name -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force $unzipLocation
