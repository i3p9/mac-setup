# Launch Deamons

## VoltageShift Script
This launchd runs every 30 minutes and on startup, and executes a script that makes sure the system is undervolted using VoltageShift.
```bash
cd /Users/fahim/Library/LaunchAgents/
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/launchd/VolShift-Script.plist
mkdir ~/Startup_scripts && cd "$_"
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/launchd/voltageshift.sh
```