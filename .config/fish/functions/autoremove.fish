# Defined in /tmp/fish.a7EoMr/autoremove.fish @ line 1
function autoremove
	sudo pacman -R (pacman -Qdtq)
end
