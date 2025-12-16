**What to do**: Avoid destructive actions (e.g. losing all email tags) in Thunderbird

**How**:
  Install extension tbkeys-lite (https://addons.thunderbird.net/thunderbird/downloads/latest/tbkeys-lite/addon-987885-latest.xpi?src=search)
  and configure Preferences in Main key bindings as follows:
```
{
"0": "unset",
"j": "unset",
"k": "unset",
"o": "unset",
"f": "unset",
"n": "unset",
"r": "unset",
"a": "unset",
"x": "unset",
"c": "unset",
"u": "unset",
"b": "unset",
"m": "unset",
"p": "unset",
"s": "unset",
"t": "unset",
"w": "unset",
"]": "unset",
"[": "unset"
}
```

**Why**?
  Thunderbird by default has certain single key bindings which can cause unwanted destructive actions
  (e.g. archive an email thread), for example if a user wants to search for a string and the cursor
  is not or no longer in the quick search bar.

**Affected version(s)**:
  All recent, e.g. 78.4.0

**Solution in**:
  https://bugzilla.mozilla.org/show_bug.cgi?id=615957#c78

**Sample search engine search text(s)**:
  thunderbird bug "disable single-key shortcuts"
