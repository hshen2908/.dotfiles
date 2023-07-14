#!/usr/bin/env bash

if [ "$TERM" = "linux" ]; then
	printf %b '\e]P01C1E26' # set background color to "Base"
	printf %b '\e]P8585B70' # set bright black to "Surface2"

	printf %b '\e]P7C7C7C7' # set text color to "Text"
	printf %b '\e]PFFEFFFF' # set bright white to "Subtext0"

	printf %b '\e]P1E95678' # set red to "Red"
	printf %b '\e]P9EC6A88' # set bright red to "Red"

	printf %b '\e]P229D398' # set green to "Green"
	printf %b '\e]PA3FDAA4' # set bright green to "Green"

	printf %b '\e]P3FAB795' # set yellow to "Yellow"
	printf %b '\e]PBFBC3A7' # set bright yellow to "Yellow"

	printf %b '\e]P426BBD9' # set blue to "Blue"
	printf %b '\e]PC3FC6DE' # set bright blue to "Blue"

	printf %b '\e]P5EE64AE' # set magenta to "Pink"
	printf %b '\e]PDF075B7' # set bright magenta to "Pink"

	printf %b '\e]P659E3E3' # set cyan to "Teal"
	printf %b '\e]PE6BE6E6' # set bright cyan to "Teal"

	clear
fi
