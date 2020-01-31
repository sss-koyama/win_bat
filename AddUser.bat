REM Windowsのユーザーを登録します。
REM 追加したユーザーのパスワードを無期限にします。
REM Remote Desktop Usersグループに追加します。
REM 「SET GROUPNAME=」の後に記述したグループに追加します。

REM このバッチと同じディレクトリに「userlist.txt」というファイル名でユーザー名とパスワードのリストを置いてください。
REM ユーザー名とパスワードは半角スペースまたはTab区切り、1行1ユーザーで記述します。

SETLOCAL

SET GROUPNAME="TOSS_users"
SET MYDIR=%~d0%~p0


for /f "tokens=1,2" %%a in (%MYDIR%userlist.txt) do (
  echo %%a %%b

	net user %%a %%b /add
	wmic useraccount where Name=^"%%a^" set PasswordExpires=False
	net localgroup "Remote desktop users" %%a /add
	net localgroup %GROUPNAME% %%a /add
)
PAUSE

ENDLOCAL