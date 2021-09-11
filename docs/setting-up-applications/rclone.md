# Setting up automated local and cloud backup via rclone

Downloading rclone and setting up the excludes file for backing up. (to avoid unncessary and i/o hammering files like ds_store, git, node_modules folder etc.)

```bash
brew install rclone
mkdir ~/.config/rclone && cd "$_"
wget https://github.com/i3p9/mac-setup/raw/main/files/rclone-exclude.txt
```

Now that it's set up, download the rclone script and set it up to run every X hours.
