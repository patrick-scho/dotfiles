# Defined in /tmp/fish.rJt6ae/sharescreen.fish @ line 2
function sharescreen
	set mode (gtf $argv | grep Modeline | string sub -s 12)
  set modename (echo $mode | string split "  ")[1]
  eval "xrandr --newmode $mode"
  eval "xrandr --addmode VIRTUAL1 $modename"
  eval "xrandr --output VIRTUAL1 --mode $modename --right-of eDP1"
  set res (echo $modename | string replace '"' '' | string split "_")[1]
  eval "~/.fehbg"
  eval "x11vnc -clip "$res"+1921+0 -repeat -noxdamage -ncache 10"
  eval "xrandr --output VIRTUAL1 --off"
end
