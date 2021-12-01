# GPG-Setup

- Install gnupg and pinentry

  ```bash
  brew install gnupg pinentry-mac
  ```

- Configure pinentry

On M1 Macs
  ```bash
  echo "pinentry-program /opt/homebrew/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
  killall gpg-agent
  ```

On Intel Macs
  ```bash
  echo "pinentry-program /usr/local/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
  killall gpg-agent
  ```

```bash
Note: You may need to create a folder .gnupg and then create a empty file gpg-agent.conf
```

- Check for existing keys first, `gpg --list-secret-keys --keyid-format LONG`

- After that, generate a key

  ```bash
  gpg --full-generate-key
  ```

- At the prompt, select these options:
  - press `Enter` to accept the default `RSA and RSA`
  - Enter the key size `4096`
  - Enter the validity of the key, press `Enter` to select the default that it will never expire
  - Enter userID Information, suggestion is to use Github provided `noreply` email address for the email section. Which is `i3p9@users.noreply.github.com`
  - Type a passphrase, make sure to save it in your Password manager

- List all gpg keys and select your public one

  ```bash
  gpg --list-secret-keys --keyid-format LONG

  /Users/hubot/.gnupg/secring.gpg
  ------------------------------------
  sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
  uid                          Hubot
  ssb   4096R/42B317FD4BA89E7A 2016-03-10
  ```



- Then run this command substituting your `keyid`, which in this case is `3AA5C34371567BD2`, so we'll do

  ```bash
  gpg --armor --export 3AA5C34371567BD2
  ```

- Copy the key and import it in Github's [SSH and GPG keys](https://github.com/settings/keys) section

- Tell git to use the keyid, and sign every commit by

  ```bash
  git config --global user.signingkey KEYIDHERE
  git config --global commit.gpgsign true
  ```

This should be good to go now. If there's any issues, please refer to the troubleshooting section.

### Troubleshooting

If `git commit` is throwing error like `gpg: signing failed`, then run
```bash
echo "test" | gpg --clearsign

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

test
gpg: signing failed: Inappropriate ioctl for device
gpg: [stdin]: clear-sign failed: Inappropriate ioctl for device
```
If the error is like above, run
```bash
echo 'export GPG_TTY=$(tty)' >> ~/.zshrc
```
and try again!
