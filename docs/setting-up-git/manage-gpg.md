# Managing GPG Keys

## Backing Up

* Figure out which key you want to back up

```bash
gpg --list-secret-keys --keyid-format LONG

/Users/fahim/.gnupg/pubring.kbx
-------------------------------
sec   rsa4096/H8875C58DS122SD3 2021-08-28 [SC]
      92DF0532E363D00C2C2D85C58DS9C8C68901643
uid                 [ultimate] Fahim Faisal <i3p9@users.noreply.github.com>
ssb   rsa4096/865165ADF56W2E61 2021-08-28 [E]
```

* Lets say I want to export the `i3p9@users.noreply.github.com` key.

```bash
gpg -o privatekey.gpg --export-options backup --export-secret-keys i3p9@users.noreply.github.com
```

You'll be promted to enter your passphrase, for me pinentry handles my passphrases. Then the key will be backed up successfully in the directory you ran the commands on. Store it somewhere safe!


## Restoring

* Import the key you want to restore, in my case it's `privatekey.gpg` Run the command from where your key is.

```bash
❯ gpg --import-options restore --import privatekey.gpg

gpg: key H8875C58DS122SD3: public key "Fahim Faisal <i3p9@users.noreply.github.com>" imported
gpg: key H8875C58DS122SD3: secret key imported
gpg: Total number processed: 1
gpg:               imported: 1
gpg:       secret keys read: 1
gpg:   secret keys imported: 1
```

* Now you have to edit your key to give it proper trust

```bash
❯ gpg --edit-key i3p9@users.noreply.github.com
gpg (GnuPG) 2.3.2; Copyright (C) 2021 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Secret key is available.

sec  rsa4096/H8875C58DS122SD3
     created: 2021-08-28  expires: never       usage: SC
     trust: unknown      validity: unknown
ssb  rsa4096/865165ADF56W2E61
     created: 2021-08-28  expires: never       usage: E
[unknown] (1). Fahim Faisal <i3p9@users.noreply.github.com>
```

* Type `trust` to trust your key.

```bash
gpg❯ trust
sec  rsa4096/H8875C58DS122SD3
     created: 2021-08-28  expires: never       usage: SC
     trust: unknown      validity: unknown
ssb  rsa4096/865165ADF56W2E61
     created: 2021-08-28  expires: never       usage: E
[unknown] (1). Fahim Faisal <i3p9@users.noreply.github.com>
```

* Type `5` to completely trust the key.

```bash
Please decide how far you trust this user to correctly verify other users' keys
(by looking at passports, checking fingerprints from different sources, etc.)

  1 = I don't know or won't say
  2 = I do NOT trust
  3 = I trust marginally
  4 = I trust fully
  5 = I trust ultimately
  m = back to the main menu

Your decision? 5
```

* Press `y` to continute

```bash
Do you really want to set this key to ultimate trust? (y/N) y

sec  rsa4096/H8875C58DS122SD3
     created: 2021-08-28  expires: never       usage: SC
     trust: ultimate      validity: ultimate
ssb  rsa4096/865165ADF56W2E61
     created: 2021-08-28  expires: never       usage: E
[ultimate] (1). Fahim Faisal <i3p9@users.noreply.github.com>

```

All done! key should be trusted and ready to use. (If you're doing this for the first time, `quit` exits out of gpg)
