set LIBRARY_LIB=%LIBRARY_LIB:\=/%
set LIBRARY_INC=%LIBRARY_INC:\=/%

del configure.ucrt configure
move Makevars.ucrt src/Makevars.ucrt
"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
