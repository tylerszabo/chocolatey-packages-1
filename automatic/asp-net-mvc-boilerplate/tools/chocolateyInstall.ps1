﻿$ErrorActionPreference = 'Stop';

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$filePath = "$toolsPath\asp-net-mvc-boilerplate_x32.vsix"

$vsixUrl =  "file://" + $filePath.Replace("\", "/")

$parameters = @{
    PackageName = 'asp-net-mvc-boilerplate'
    VsixUrl = $vsixUrl
}

Install-ChocolateyVsixPackage @parameters
