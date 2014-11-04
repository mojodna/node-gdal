@echo off

::VS2014 cmd prompt
CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
::Python
set PATH=C:\Python27;%PATH%
::7z
set PATH=C:\Program Files\7-Zip;%PATH%
::find
SET PATH=C:\Program Files (x86)\Git\bin;%PATH%

IF NOT EXIST includes (
  powershell "(New-Object Net.WebClient).DownloadFile('https://mapnik.s3.amazonaws.com/dist/dev/gdal-1.11.1-win-sdk-14.0-x64.7z', 'gdal-1.11.1-win-sdk-14.0-x64.7z')"
  7z x gdal-1.11.1-win-sdk-14.0-x64.7z -ogdal-sdk
)

npm install https://github.com/mapbox/node-pre-gyp/archive/master.tar.gz