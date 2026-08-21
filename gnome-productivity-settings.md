For **increasing the font size of window titles and menu entries**, use one of the following:

Start the "Settings" application (command line: start "gnome-control-center"), then select Universal Access -> Seeing -> Large Text

`gnome-control-center`

Install the gnome-tweaks tool and start the "Tweaks" application from the "Utilites" application group (command line: start "gnome-tweaks"), then change the font sizes in section "Fonts"

`gnome-tweaks`

---

For **displaying the minimize and maximize buttons in all windows on Gnome** (v. 3.28.3 or later), run:

`gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"`

For **setting the window focus mode so that the focus follows the mouse**, run:

`gsettings set org.gnome.desktop.wm.preferences focus-mode "mouse"`

For **automatically raising a windows under the mouse**, run:

`gsettings set org.gnome.desktop.wm.preferences auto-raise true`

For **changing the focus auto-raise delay from the default of 500 to 300**, run:

`gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 300`

For **raising a window under the mouse also by clicking in it with the left mouse key** (this behavior might have been turned off), run:

`gsettings set org.gnome.desktop.wm.preferences raise-on-click true`

For **avoiding a popup ("toast") to be displayed each time <ctrl>c is pressed in a Gnome Terminal window**, run:

`gsettings set org.gnome.Ptyxis toast-on-copy-clipboard false`

For **enabling middle mouse key pasting**, run:

`gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true`

For **disabling the caps lock key**, run:

- if `gsettings get org.gnome.desktop.input-sources xkb-options` displays the result `@as []`:

`gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"`

- else:

`gsettings set org.gnome.desktop.input-sources xkb-options "['existing:opt', 'caps:none']"`

All these changes will become effective immediately, without having to restart the applications.

Note: For displaying the current settings, you can replace `set` by `get` and omit the last argument in the above commands.

---

**Ansible**

For **being able to read the FAILED lines of the output of an ansible-playbook run in a Gnome Terminal**, create a file `~/.ansible.cfg`
(or modify it if there is already one), with the following content:
```
[colors]
highlight    = white
verbose      = bright blue
warn         = bright purple
error        = red
debug        = bright gray
deprecate    = purple
skip         = cyan
unreachable  = red
ok           = green
changed      = yellow
diff_add     = green
diff_remove  = red
diff_lines   = cyan
```

