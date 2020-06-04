@chcp 1251 & cls
@echo off

echo Вставьте ссылочку на видео или плейлист
echo Все скаченные файлы поместятся в папку "Видео"
echo Видео из плейлиста будут помещены в папку с название плейлиста
echo. 
:start
set /p url="Ссылочка: "

echo "%url%" | find "playlist" && goto playlist || goto notPlaylist

:playlist
youtube-dl -o "Видео/%%(playlist)s/%%(playlist_index)s-%%(title)s.%%(ext)s" "%url%"
echo. 
echo Плейлист скачан!
echo. 
goto start

:notPlaylist
youtube-dl -o "Видео/%%(title)s.%%(ext)s" "%url%"
echo. 
echo Видео скачано!
echo. 
goto start

