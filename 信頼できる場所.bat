REM �E�N���b�N����u�Ǘ��҂Ƃ��Ď��s�v�Ŏ��s���Ă��������B
REM ���W�X�g����Location0�ŐM���ł���ꏊ��o�^���܂��B
REM ACCESS2016�A2013�A2010�ɑΉ����Ă��܂����A2010�ł̓e�X�g���Ă��܂���B

@ECHO OFF

SETLOCAL

SET  USR_INPUT_STR=

SET /P USR_INPUT_STR="�M���ł���p�X����͂��Ă��������i�Ō��\�����Ă��������j�F"

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