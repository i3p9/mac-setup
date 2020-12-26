for clip in $(cat yt.txt); do
  FILENAME=$(youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 -o '%(title)s.%(ext)s' --get-filename $clip)
  youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 -o '%(title)s.%(ext)s' $clip
  megaput "$FILENAME";
  rm -f "$FILENAME"
done



// Where yt.txt contains lines of yt links/id and also configure megarc file before using megaput. Use nano ~/.megarc
