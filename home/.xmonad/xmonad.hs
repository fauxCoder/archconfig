import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders (smartBorders)
import qualified Data.Map as M

myTerminal = "xterm -fg rgb:bc/ea/ff -bg rgb:22/22/22"
myWorkspaces = ["1","2","3","4","5"]
myLayout = smartBorders $ GridRatio (3/2) ||| Full
mykeys (XConfig {modMask = modm}) = M.fromList $ [
    ((modm, xK_p), spawn "dmenu_run -fn 'Inconsolata-14'") ]

main = xmonad defaults

defaults = def
    {   terminal = myTerminal
    ,   workspaces = myWorkspaces
    ,   layoutHook = myLayout
    ,   handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook
    ,   keys = \c -> mykeys c `M.union` keys def c
    ,   normalBorderColor = "#333333"
    ,   focusedBorderColor = "#F0F0F0"
    }
