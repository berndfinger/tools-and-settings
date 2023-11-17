For:
- displaying the minimize and maximize buttons in all windows on Gnome (v. 3.28.3 or later),
- setting the window focus mode so that the focus follows the mouse,
- automatically raising a windows under the mouse, 
run the following command in a terminal:

`gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"`

`gsettings set org.gnome.desktop.wm.preferences focus-mode "mouse"`

`gsettings set org.gnome.desktop.wm.preferences auto-raise true`

These changes will become effective immediately, without having to restart the applications.

Note: For displaying the current settings, you can replace `set` by `get` and omit the last argument in the above commands.
