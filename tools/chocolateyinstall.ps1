$Timeout = 20

$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/qlik-download/qlikview/releases/download/v12.90.20100/QlikViewDesktop_x64Setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'qlikview*'
  checksum      = 'CF6589A2326FE7C1C02BD7F9FFC3AC380D0E4EAC5B96614C50ADF38BF73365DF'
  checksumType  = 'sha256'
  silentArgs   = '/s /v/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
exit 0