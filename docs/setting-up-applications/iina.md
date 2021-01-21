# Setting up iina

Scrobble to Trakt using trakts

- Enable custom mpv config in IINA advance settings and set `~/.config/mpv/` as the path
- In `~/.config/mpv/`, create a file named mpv.conf using `nano mpv.conf` and put the following

```
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
