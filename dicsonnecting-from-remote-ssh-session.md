**What to do**:
  1. Install the lsof program if not already done
  2. Run `lsof -Pni :22` to display all processes with an active ssh connection (port 22).
     This shows the remote IP addresses in the last output column, "NAME".
  4. Kill those processes which are related to the hanging sessions. The input prompt
     will appear again in the related terminal sessions.

**Why?**
  If a remote ssh session is getting unresponsive (e.g. after getting back from a system sleep),
  instead of closing the terminal window (all terminal output will be lost) and opening a new
  terminal, this method can be used to get back the prompt in the existing terminals, keeping
  all previous terminal output 

**Affected version(s)**:
  All terminal applications, any version

**Solution in**:
  https://unix.stackexchange.com/questions/2919/kill-an-unresponsive-ssh-session-without-closing-the-terminal

**Sample search engine search texts**:
  "how to get out of a hanging terminal session without closing the terminal window?"
