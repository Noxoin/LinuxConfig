import XMonad
import XMonad.Config.Gnome

myFocusedBorderColour = "#FF82AB"
myNormalBorderColour = "#696969"
myFocusFollowsMouse = False

main = xmonad gnomeConfig
       { terminal = "gnome-terminal"
       , focusedBorderColor = myFocusedBorderColour
       , normalBorderColor = myNormalBorderColour
       , focusFollowsMouse = myFocusFollowsMouse
       }
