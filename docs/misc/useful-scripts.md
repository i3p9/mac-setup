# useful-scripts

## muxing videos and subtitles

Picture this, you have video files and their subtitles in a folder. You want to mux all of them but doing them one by one is, well, simply a waste of time. Fear not, I have commands for exactly this issue. If you're a data hoarder like me, trust me it'll come in handy.

Pre-requisite: All video files (mp4/mkv) and the `.srt` files in the same folder, have `mkvtoolnix` cli installed.

For `.mp4` files:

```bash
ls *.mp4 | sed -e 's/\.mp4$//' | xargs -I {} mkvmerge -o "remux-{}.mp4" "{}.mp4" --forced-track "0:yes" --default-track "0:yes" --track-name "0:English" --language "0:eng" "{}.srt"
```

For `.mkv` files:

```bash
ls *.mkv | sed -e 's/\.mkv$//' | xargs -I {} mkvmerge -o "remux-{}.mkv" "{}.mkv" --forced-track "0:yes" --default-track "0:yes" --track-name "0:English" --language "0:eng" "{}.srt"
```

## downloading .m3u8 streams

```bash
ffmpeg -i "Link of the .m3u8" -c copy video.ts
```
