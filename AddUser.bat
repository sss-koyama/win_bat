REM Windows�̃��[�U�[��o�^���܂��B
REM �ǉ��������[�U�[�̃p�X���[�h�𖳊����ɂ��܂��B
REM Remote Desktop Users�O���[�v�ɒǉ����܂��B
REM �uSET GROUPNAME=�v�̌�ɋL�q�����O���[�v�ɒǉ����܂��B

REM ���̃o�b�`�Ɠ����f�B���N�g���Ɂuuserlist.txt�v�Ƃ����t�@�C�����Ń��[�U�[���ƃp�X���[�h�̃��X�g��u���Ă��������B
REM ���[�U�[���ƃp�X���[�h�͔��p�X�y�[�X�܂���Tab��؂�A1�s1���[�U�[�ŋL�q���܂��B

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