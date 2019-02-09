function removeorphans
	sudo pacman -Rns (pacman -Qtdq)
end
