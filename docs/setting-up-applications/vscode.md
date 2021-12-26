# VS Code Setup

VS Code configuration is mostly handled by Settings Sync. Click on the Accounts icon in  bottom left and sign in with Github or MS account and sync everything. From now on, everything you configure will be saved and it saves a *lot* of time.

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

- Disable the annoying thing where it doesn't show the subfolder if there's only one folder present

```text
"explorer.compactFolders": false
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
- Font Family: `PragmataPro`
- Color Theme: `Dark+`

```bash
code --install-extension extension.id
```
