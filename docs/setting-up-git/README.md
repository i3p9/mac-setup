# Setting up Git

First step is to make sure you have the latest `git`, to make sure, let's do

```bash
brew install git
```

Then add macOS specific gitignore globally
```bash
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore
git config --global core.excludesfile ~/.gitignore
```
