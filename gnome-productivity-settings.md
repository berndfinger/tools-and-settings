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

These three changes will become effective immediately, without having to restart the applications.

Note: For displaying the current settings, you can replace `set` by `get` and omit the last argument in the above commands.
