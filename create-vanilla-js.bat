@echo off

REM Prompt user to enter project name
set /p projectName=Enter project name: 

REM Check if project already exists
if exist "%userprofile%\Desktop\%projectName%\" (
    echo Project Already Exists!
    exit /b 1
)

REM Navigate to Desktop
cd /d "%userprofile%\Desktop"

REM Create project folder
mkdir "%projectName%"

REM Navigate to project folder
cd /d "%projectName%"

REM Create index.html, style.css, and app.js files
(
  echo ^<!DOCTYPE html^>
  echo ^<html lang="en"^>
  echo   ^<head^>
  echo     ^<meta charset="UTF-8" /^>
  echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0" /^>
  echo     ^<link rel="stylesheet" href="style.css" /^>
  echo     ^<title^>%projectName%^</title^>
  echo   ^</head^>
  echo   ^<body^>
  echo     %projectName%
  echo     ^<script src="./app.js"^>^</script^>
  echo   ^</body^>
  echo ^</html^>
) > index.html

(
  echo html, body, div, span, applet, object, iframe,
  echo h1, h2, h3, h4, h5, h6, p, blockquote, pre,
  echo a, abbr, acronym, address, big, cite, code,
  echo del, dfn, em, img, ins, kbd, q, s, samp,
  echo small, strike, strong, sub, sup, tt, var,
  echo b, u, i, center,
  echo dl, dt, dd, ol, ul, li,
  echo fieldset, form, label, legend,
  echo table, caption, tbody, tfoot, thead, tr, th, td,
  echo article, aside, canvas, details, embed, 
  echo figure, figcaption, footer, header, hgroup, 
  echo menu, nav, output, ruby, section, summary,
  echo time, mark, audio, video {
  echo 	margin: 0;
  echo 	padding: 0;
  echo 	border: 0;
  echo 	font-size: 100%;
  echo 	font: inherit;
  echo 	vertical-align: baseline;
  echo }
  echo /* HTML5 display-role reset for older browsers */
  echo article, aside, details, figcaption, figure, 
  echo footer, header, hgroup, menu, nav, section {
  echo 	display: block;
  echo }
  echo body {
  echo 	line-height: 1;
  echo }
  echo ol, ul {
  echo 	list-style: none;
  echo }
  echo blockquote, q {
  echo 	quotes: none;
  echo }
  echo blockquote:before, blockquote:after,
  echo q:before, q:after {
  echo 	content: '';
  echo 	content: none;
  echo }
  echo table {
  echo 	border-collapse: collapse;
  echo 	border-spacing: 0;
  echo }
) > style.css


REM Create app.js file with a newline character
echo. > app.js

echo Project created successfully!

REM Open project in Visual Studio Code
code .
