pushd %~dp0
call Tools\nuget3.4.exe install Microsoft.NETCore.Runtime.CoreCLR -Version 1.1.0
call dotnet restore
cd Lib\Facade.Split\Microsoft.Azure.Storage.File.Facade
call dotnet build --configuration release
cd Lib\NetStandard.Split\Microsoft.Azure.Storage.File
call dotnet build --configuration release
popd
