# Setting up iina

## audio downmix to stereo using ffmpeg

In `~/.config/mpv/mpv.conf`

```bash
af=lavfi=[loudnorm=I=-16:TP=-3:LRA=4]
```
[source](https://github.com/mpv-player/mpv/issues/6563#issuecomment-473523126)

## scrobble to Trakt using trakts

- Enable custom mpv config in IINA advance settings and set `~/.config/mpv/` as the path
- In `~/.config/mpv/`, create a file named mpv.conf using `nano mpv.conf` and put the following

```bash
input-ipc-server=/tmp/mpv-socket
```

- Save the file

Now installing [trakt-scrobbler](https://github.com/iamkroot/trakt-scrobbler)

- Install pipx, install trakt-scrobbler via pipx and start the app

```bash
brew install pipx
pipx ensurepath
pipx install trakt-scrobbler
trakts init
```

- When setting it up, select `mpv` as the player

## subtitles setup

I personally use `NSans` font for my subtitles as I am used to the font from watching Netflix Which can be found in the `/files/fonts/` section. Setting it up in IINA > Preferences > Subtitle

- Select font nsans medium, color black
- Border 0
- Background black, opacity 85%
