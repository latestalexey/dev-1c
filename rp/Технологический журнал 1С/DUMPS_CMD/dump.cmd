@ echo off
echo Start dumping processes on this server...
CD %~dp0
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq rmngr.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a rmngr_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq rphost.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a rphost_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq ragent.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a ragent_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq ragent.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a ragent_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq httpd.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a httpd_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq w3wp.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a w3wp_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq 1cv8c.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a 1cv8c_%%a)
for /f "usebackq tokens=2" %%a in (`tasklist /FO list /FI "IMAGENAME eq 1cv8.exe" ^| find /i "PID:"`) do (
start /b procdump.exe -ma %%a 1cv8_%%a)