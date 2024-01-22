**What to do**
  Change the date format to an unambiguous format, e.g. `yyyy-MM-dd`

**How?**
  - Click the `three holizontal lines` menu in the top right corner
  - Select `General`, then scroll to the bottom of the page
  - Click `Config Editor...`
  - Type `intl.date_time.pattern_override.date_short`, select `String`, then click the `+` button at the right side of the line
  - Enter `yyyy-MM-dd` and press the tick mark.
  - Confirm that this setting is active by selecting `Events and Tasks` -> `New Task:` and checking the `Start:` and `Due Date:` fields.

**Why?**
  Thunderbird by default uses either the application locale of the regional settings locale, as shown in:
  - Click the `three holizontal lines` menu in the top right corner
  - Select `General`
  - Select `Date and Time Formatting`

**Affected version(s)**: All recent, e.g. `115.6.1`

**Solution in**: https://enterprise.thunderbird.net/manage-updates-policies-and-customization/thunderbird-preferences-enterprise/customize-thunderbirds-date-and-time-formats

**Sample search engine search texts for displaying related bugs**: `thunderbird change date format in tasks`
