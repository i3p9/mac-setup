for %%A IN (*.mp4) 
  do ( "C:\Program Files\MKVToolNix\mkvmerge.exe" -o "remux-%%~nxA" "%%~A" --forced-track "0:yes" --default-track "0:yes" --track-name "0:English" --language "0:eng" "%%~nA.srt" )
