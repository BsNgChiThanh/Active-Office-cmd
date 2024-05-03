@echo off
title Activate Microsoft Visio 2021 for FREE - https://github.com/BsNgChiThanh 
cls

echo Activating Microsoft Visio 2021...


(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")
(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")


cscript ospp.vbs /inslic:"..\root\Licenses16\pkeyconfig-office.xrm-ms"
(for /f %x in ('dir /b ..\root\Licenses16\client-issuance*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x")
(for /f %x in ('dir /b ..\root\Licenses16\visioprovl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x")
(for /f %x in ('dir /b ..\root\Licenses16\visiopro2021vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x")


cscript ospp.vbs /setprt:1688
cscript ospp.vbs /inpkey:KNH8D-FGHT4-T8RK3-CTDYJ-K2HT4
cscript ospp.vbs /sethst:107.175.77.7
cscript ospp.vbs /sethst:172.16.0.2
cscript ospp.vbs /act


:end
:notsupported
:halt
pause >nul