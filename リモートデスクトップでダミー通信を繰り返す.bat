REM �����[�g�f�X�N�g�b�v�ڑ��̃��[�J���f�o�C�X�ƃ��\�[�X�ŁAC�h���C�u�����_�C���N�g�ݒ肵�Ă����܂��B

REM �ŏ������ċN��
@if not "%~0"=="%~dp0.\%~nx0" (
start /min cmd /c,"%~dp0.\%~nx0" %*
goto :eof
)

REM �R�O�b�����Ƀ��[�J����C�h���C�u��dir
:loop
dir \\tsclient\c
ping -n 30 localhost
goto loop