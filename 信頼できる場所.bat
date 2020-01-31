REM 右クリックから「管理者として実行」で実行してください。
REM レジストリにLocation0で信頼できる場所を登録します。
REM ACCESS2016、2013、2010に対応していますが、2010ではテストしていません。

@ECHO OFF

SETLOCAL

SET  USR_INPUT_STR=

SET /P USR_INPUT_STR="信頼できるパスを入力してください（最後に\をつけてください）："

REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\16.0\Access"

IF %errorlevel% == 0 (
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\16.0\Access\Security\Trusted Locations\Location0"

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\16.0\Access\Security\Trusted Locations\Location0" /v AllowSubfolders /t REG_DWORD /d 1

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\16.0\Access\Security\Trusted Locations\Location0" /v "path" /t REG_SZ /d %USR_INPUT_STR%
)

REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Access"

IF %errorlevel% == 0 (
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Access\Security\Trusted Locations\Location0"

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Access\Security\Trusted Locations\Location0" /v AllowSubfolders /t REG_DWORD /d 1

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\15.0\Access\Security\Trusted Locations\Location0" /v "path" /t REG_SZ /d %USR_INPUT_STR%
)

REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\14.0\Access"

IF %errorlevel% == 0 (
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\14.0\Access\Security\Trusted Locations\Location0"

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\14.0\Access\Security\Trusted Locations\Location0" /v AllowSubfolders /t REG_DWORD /d 1

	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\14.0\Access\Security\Trusted Locations\Location0" /v "path" /t REG_SZ /d %USR_INPUT_STR%
)

ENDLOCAL