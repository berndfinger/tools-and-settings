**What to do**: Avoid Firefox to unconditionally quit after trying to enter the `@` symbol in a web input form 

**How**:
  In about:config , toggle browser.warnOnQuit from false to true

Why:
  Default behavior when hitting `<cmd>q` in Firefox on MacOS X is to unconditionally quit Firefox. Note: The Apple `<cmd>` key has the
  same location on a German keyboard as `<AltGr>` on a industry standard PC, and `<AltGr>q` creates a `@` symbol by default on such a
  PC (Linux and Windows).
  So it can happen that you want to enter a `@` symbol as part of an email, and by accident, when pressing the industry standard keys
  on a Apple computer, your browser quits instantanteously. As a consequence, all your data in all your browser tabs will be lost.
  Activating the `Warn you when quitting the browser` setting in `Preferences -> General -> Startup` does not cause Firefox to create
  a warning popup after hitting `<cmd>q`.

Affected version(s):
  78.2.0esr (64-bit) and many previous versions as well

Solution in:
  https://bugzilla.mozilla.org/show_bug.cgi?id=1438499#c5

Sample search engine search texts for displaying related bugs:
  firefox mac os always quits without asking with cmd-q
  Warn when quitting the browser setting has no effect on Firefox on MacOSX
