# Defined in /tmp/fish.fZfkTr/t.fish @ line 2
function t
	set file $HOME/.templates/$argv[1]
	set localfile $argv[1]

	if test -e $localfile
		echo "File already exists"
		return
	end

	if test -e $file
		cp $file .
	end

	if test -e localfile
		eval $EDITOR $localfile
	end
end
