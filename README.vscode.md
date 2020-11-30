# Using these settings with VSCode

Using these settings with VSCode involve installing the [ruby-rubocop](https://marketplace.visualstudio.com/items?itemName=misogi.ruby-rubocop) extension and using the following settings (using [settings.json](https://code.visualstudio.com/docs/getstarted/settings)):

```json
// Run rubocop on save and show your squigglies
"ruby.rubocop.onSave": true,
// Use bundle exec when running rubocop (so it uses this and other gems
// based on the versions in your Gemfile/Gemfile.lock)
"ruby.rubocop.useBundler": true
```

This will run `bundle exec rubocop` on your file upon saving, and you will see the squigglies with the errors to be fixed for that file. Hover over each issue and you will see the cop that failed.

Note this also enables the autocorrect feature.

## Other useful editor settings

Some basic editor settings that will make your ruby life easier are:

```json
  // Use two spaces for tab.
  "editor.tabSize": 2,
  // Removes the trailing whitespace, which makes a lot of the
  // whitespace detection (for both git and rubocop) pretty happy.
  "files.trimTrailingWhitespace": true,
  // Let Rubocop format
  "ruby.format": "rubocop",
  // Insert spaces instead of tabs when [Tab] is pressed
  "editor.insertSpaces": true
  // Detects whether we are using tabs or spaces for indent (we use 2 spaces)
  "editor.detectIndentation": true
  // When automatically formatting, run rubocop with autofix
  "ruby.format": "rubocop"
```
