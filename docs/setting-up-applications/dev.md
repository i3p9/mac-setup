# Setting up dev environment (work in progress)

## xcode

```bash
mas-cli install 497799835
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license
```

Then setup cocoapods

```bash
brew install ruby
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/opt/ruby/lib"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/usr/local/opt/ruby/include"' >> ~/.zshrc
brew install cocoapods
```

## flutter

```bash
brew install flutter dart
flutter doctor
```

## python

```bash
brew install python3
echo "alias python=/usr/local/bin/python3" >> ~/.zshrc
echo "alias pip=/usr/local/bin/pip3" >> ~/.zshrc
```

## node

```bash
brew install node nvm
```

### some necessary node packages

```bash
npm i docsify-cli -g
npm i typescript -g
npx tsc
```

## web

NextJS

```bash
npx create-next-app nextjs-blog --use-npm --example "https://github.com/vercel/next-learn-starter/tree/master/learn-starter"
```

react

```bash
npx create-react-app my-app
cd my-app
npm start
```

Express/Mongo(via Mongoose) Stack
```bash
npm init
npm i express ejs express-ejs-layouts mongoose
npm --save-dev nodemon dotenv
```
