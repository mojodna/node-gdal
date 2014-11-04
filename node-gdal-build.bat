@echo off

npm install --build-from-source --toolset=cpp11 --msvs_version=2013 --shared_gdal=C:/mb/node-gdal/gdal-sdk/libs/

msbuild build\binding.sln /t:rebuild /toolsversion:14.0 /p:PlatformToolset=v140 /p:Configuration=Release /p:Platform="x64"