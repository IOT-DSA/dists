@echo off
set me=%~f0
set me=%me:~0,-4%
%~0\..\..\..\dart-sdk\bin\dart.exe "%me%.dart" %*
