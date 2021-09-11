#!/usr/bin/env bash

#rclone config
EXCLUDE_LIST='/Users/fahim/.config/rclone/rclone-exclude.txt'

#Configuring Backup Folders
LOCAL_CODES='/Users/fahim/codes/'
LOCAL_PHOTOS='/Users/fahim/Pictures/'
LOCAL_DOCS='/Users/fahim/Documents/'
LOCAL_DOTFILES='/Users/fahim/.config/'
LOCAL_RAYCAST='/Users/fahim/RaycastScripts/'
LOCAL_SCRIPTS='/Users/fahim/Scripts/'
LOCAL_STUFF='/Users/fahim/Stuff/'
LOCAL_SYNC='/Users/fahim/Sync/'
LOCAL_DESKTOP='/Users/fahim/Desktop/'

#Configuing Remote Folders
REMOTE_CODES='/Volumes/Main/Backup/Devices/Thinkpad/codes/'
REMOTE_PHOTOS='/Volumes/Main/Backup/Devices/Thinkpad/Pictures/'
REMOTE_DOCS='/Volumes/Main/Backup/Devices/Thinkpad/Documents/'
REMOTE_DOTFILES='/Volumes/Main/Backup/Devices/Thinkpad/.config/'
REMOTE_RAYCAST='/Volumes/Main/Backup/Devices/Thinkpad/RaycastScripts/'
REMOTE_SCRIPTS='/Volumes/Main/Backup/Devices/Thinkpad/Scripts/'
REMOTE_STUFF='/Volumes/Main/Backup/Devices/Thinkpad/Stuff/'
REMOTE_SYNC='/Volumes/Main/Backup/Devices/Thinkpad/Sync/'
REMOTE_DESKTOP='/Volumes/Main/Backup/Devices/Thinkpad/Desktop/'

# Initiating Sync

rclone copy $LOCAL_CODES $REMOTE_CODES --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_PHOTOS $REMOTE_PHOTOS --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_DOCS $REMOTE_DOCS --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_DOTFILES $REMOTE_DOTFILES --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_RAYCAST $REMOTE_RAYCAST --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_SCRIPTS $REMOTE_SCRIPTS --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_STUFF $REMOTE_STUFF --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_SYNC $REMOTE_SYNC --exclude-from=$EXCLUDE_LIST  -P
rclone copy $LOCAL_DESKTOP $REMOTE_DESKTOP --exclude-from=$EXCLUDE_LIST  -P

# TO-DO
# Error Handling
# Proper Result Parsing
