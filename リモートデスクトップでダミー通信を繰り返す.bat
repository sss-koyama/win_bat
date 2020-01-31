REM リモートデスクトップ接続のローカルデバイスとリソースで、Cドライブをリダイレクト設定しておきます。

REM 最小化して起動
@if not "%~0"=="%~dp0.\%~nx0" (
start /min cmd /c,"%~dp0.\%~nx0" %*
goto :eof
)

REM ３０秒おきにローカルのCドライブをdir
:loop
dir \\tsclient\c
ping -n 30 localhost
goto loop