For getting back the minimize button in Firefox and Nautilus and maybe other applications on Gnome (v. 3.28.3), run the following command in a terminal:

`# gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,close"`

For also showing the maximize button, run:

`# gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"`

The change will become effective immediately, without having to restart the applications.
