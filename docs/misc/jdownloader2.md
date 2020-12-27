# headless-jdownloader

## Pre-requisites

- [myjownloader](https://my.jdownloader.org) account
- Generic .jar file of jdownloader2 downloaded from [here](http://privatelink.de/?http://jdownloader.org/jdownloader2)

## Setup and installation

Create a folder called `jd` and then put the downlaoded `JDownloader.jar` to it. Then run the command listed in the second line. It'll prompt you to enter your myjdownloader account details.

```bash
mkdir ~/jd && cd "$_"
java -jar JDownloader.jar -norestart
```

After it's done, you should see it in the myjdownlaoder account slot.

## Setting up background services

Time to make a systemd-user service and enable it so that it runs in the background.

```bash
mkdir -p ~/.config/systemd/user
nano ~/.config/systemd/user/jdownloader.service
```

In the editor, copy/paste this following

```text
[Unit]
Description=JDownloader Service
After=network.target

[Service]
Environment=JD_HOME=%h/jd
ExecStart=/usr/bin/java -Djava.awt.headless=true -jar %h/jd/JDownloader.jar

[Install]
WantedBy=multi-user.target
```

Save the file. Then reload the systemd deamon, enable and start the service

```bash
systemctl --user daemon-reload
systemctl enable --now --user jdownloader
```

All done. Additionally you can see the status of the jdownloader deamon with

```bash
systemctl status --user jdownloader
```
