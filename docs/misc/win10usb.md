# creating a Windows 10 USB on macOS

While sounds fairly simple, it actually isn't, as far as I've seen.

## prerequisites:

* Latest Windows 10 ISO (Grab from [here](https://www.microsoft.com/en-gb/software-download/windows10ISO))
* 8GB+ Flash Drive
* wimlib (Grab via `brew install wimlib`)

Now let's get to it.

* Plug in the Thumb Drive
* Find out the Device id of your Thumb drive by running `diskutil list`
* If you have nothing but your Thumb Drive plugged in, it'll most likely be `/dev/disk2`

```
NOTE: THIS IS VERY IMPORTANT AND SENSITIVE, PLEASE FIND OUT THE CORRECT ID.
IF YOU CHOOSE THE WRONG ID YOU MIGHT DELETE EVERYONE AND LOSE ALL YOUR DATA

Note that you should replace the `disk2` with the name of the your drive if it wasn't `disk2`. (It may be `disk3` or `disk4`).
```

From now on we are assuming that our Thumb Drive is indeed on `/dev/disk2`

* Run this command to erase and format the drive as FAT32 in MBR Format with the name `WIN10`. MBR works for me for a UEFI System. Try GPT instead of MBR if it doesn't work for you

```bash
diskutil eraseDisk MS-DOS "WIN10" MBR /dev/disk2
```

As the time of writing, the latest ISO is `Win10_20H2_v2_English_x64.iso`. So lets mount it, assuming the ISO is in the Downloads folder

```bash
hdiutil mount ~/Downloads/Win10_20H2_v2_English_x64.iso
```

Now, copying everything except `install.wim` as it's too big to fit into FAT32 single filesize limit

```bash
rsync -vha --exclude=sources/install.wim /Volumes/CCCOMA_X64FRE_EN-US_DV9/* /Volumes/WIN10
```

After it finishes, let's split the `install.wim` into two files and copy them over to finish it up

```bash
wimlib-imagex split /Volumes/CCCOMA_X64FRE_EN-US_DV9/sources/install.wim /Volumes/WIN10/sources/install.swm 3500
```

After it's done, that's all you need to do. Unplug, and install away!
