# VS Code Setup

VS Code configuration is mostly handled by Settings Sync (id: `shan.code-settings-sync`). So open up VSCode, download the extension Settings Sync.

Click on the cogwheel bottom left, and download settings from Github Gist.

## vscode Tips

- Disable `Minimap: Render Characters` in the editor if you're using a smaller screen. You can't see the text anyway that's rendering in the minimap and making it render blocks makes it look better and easier to find specifc blocks of code. To do this, in `settings.json`->

```text
"editor.minimap.renderCharacters": false
```

Or just search for `minimap render` and uncheck the option `Editor -> Minimap: REnder Characters`

- Make the cursor blink style set to `phase` and animations to the cursor. Also add smooth scrolling

```text
"editor.cursorBlinking": "phase"
"editor.cursorSmoothCaretAnimation": true #This one enables the MS Office smooth typing mode I have it disabled personally.
"editor.smoothScrolling": true
"workbench.list.smoothScrolling": true
```

- Final new line and trim whitespaces

```text
"files.insertFinalNewline": true
"files.trimTrailingWhitespace": true
```

- Disables sending your keystrokes when searching in `settings`

```text
"workbench.settings.enableNaturalLanguageSearch": false
```

- Useful but unknown Shortcuts

```text
Option(⌥) + Shift(⇧) + Click → Multi-line cursor where clicked
Option(⌥) + Arrow Key (Left/Right) → Skip to the beginning/end of the word
Command(⌘) + Arrow Key (Left/Right) → Skip to the beginning/end of the line
Command(⌘) + Shift(⇧) + Arrow Key (Left/Right) → Highlight remaining text
Command(⌘) + Option(⌥) + Arrow Key (Up/Down) → Add a curson above/below
```

## worst case scenario

If the sync fails, here's a general idea of how it's setup.

- Files: AutoSave → `AfterDelay`
- Font Size: `16`
- Font Family: `Iosevka`
- Color Theme: `Dark+`

Extensions:

- Composer (ikappas.composer)
- Jupyter (ms-toolsai.jupyter)
- Laravel Blade Snippets (onecentlin.laravel-blade)
- Laravel Snippets (onecentlin.laravel5-snippets)
- markdownlint (davidanson.vscode-markdownlint)
- Makdown All in One (yzhang.markdown-all-in-one)
- No Code (writenothing.no-code)
- Path Intellisense (christian-kohler.path-intellisense)
- PHP Extension Pack (felixfbecker.php-pack)
- PropertyList (zhouronghui.propertylist)
- Python (ms-python.python)
- Settings Sync (shan.code-settings-sync)
- vscode-icons (vscode-icons-team.vscode-icons)
- Bracket Pair Colorizer 2 (coenraads.bracket-pair-colorizer-2)
- Sass (syler.sass-indented)
- Prettier - Code Formattar (esbenp.prettier-vscode)
- Shellman (yzhang.markdown-all-in-one)
- Wakatime (wakatime.vscode-wakatime)
- Toggle Quotes (britesnow.vscode-toggle-quotes)
- Auto Close Tags (formulahendry.auto-close-tag)
- indent-rainbow (oderwat.indent-rainbow)
- Text Power Tools (qcz.text-power-tools)
- Visual Studio IntelliCode (visualstudioexptteam.vscodeintellicode)

Note: You can install extensions using command line too

```bash
code --install-extension extension.id
```
