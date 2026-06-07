@echo off
chcp 65001 >nul
setlocal

set "REPO=D:\code\blog"
set "GIT=%LOCALAPPDATA%\GitHubDesktop\app-3.5.12\resources\app\git\cmd\git.exe"
if not exist "%GIT%" set "GIT=%LOCALAPPDATA%\GitHubDesktop\app-3.5.8\resources\app\git\cmd\git.exe"

cd /d "%REPO%"

echo ================================
echo Mole Bin Blog 一键上传
echo ================================
echo.

echo 正在检查修改...
"%GIT%" status --short
echo.

echo 正在暂存所有修改...
"%GIT%" add -A

"%GIT%" diff --cached --quiet
if %errorlevel%==0 (
  echo.
  echo 没有需要提交的修改。
  echo 如果你刚刚改了文件，请先按 Ctrl+S 保存。
  echo.
  pause
  exit /b 0
)

set "MSG=更新博客 %date% %time%"
echo 正在提交：%MSG%
"%GIT%" commit -m "%MSG%"
if errorlevel 1 (
  echo.
  echo 提交失败，请把这个窗口截图发给我。
  pause
  exit /b 1
)

echo.
echo 正在推送到 GitHub...
"%GIT%" push origin main
if errorlevel 1 (
  echo.
  echo 推送失败，请把这个窗口截图发给我。
  pause
  exit /b 1
)

echo.
echo ================================
echo 上传成功！
echo 等 1-3 分钟后打开网页，并按 Ctrl+F5 强制刷新。
echo https://xye19568-maker.github.io/Mole-bin-blog/
echo ================================
echo.
pause
