@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\node_modules\webpack-bundle-analyzer\lib\bin\analyzer.js" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\node_modules\webpack-bundle-analyzer\lib\bin\analyzer.js" %*
)