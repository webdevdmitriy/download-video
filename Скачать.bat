@chcp 1251 & cls
@echo off

echo �������� �������� �� ����� ��� ��������
echo ��� ��������� ����� ���������� � ����� "�����"
echo ����� �� ��������� ����� �������� � ����� � �������� ���������
echo. 
:start
set /p url="��������: "

echo "%url%" | find "playlist" && goto playlist || goto notPlaylist

:playlist
youtube-dl -o "�����/%%(playlist)s/%%(playlist_index)s-%%(title)s.%%(ext)s" "%url%"
echo. 
echo �������� ������!
echo. 
goto start

:notPlaylist
youtube-dl -o "�����/%%(title)s.%%(ext)s" "%url%"
echo. 
echo ����� �������!
echo. 
goto start

