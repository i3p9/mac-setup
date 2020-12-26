for /r %%f in (*.avi) do (
echo>>blah.txt file '%%~nxf'
)

ffmpeg -f concat -i blah.txt -c copy output.avi
