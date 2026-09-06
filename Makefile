all: presentation.sty presentationQ.sty symbols.sty quantumsymbols.sty
	echo "Files updated."

presentation.sty:
	truncate -s 0 $@
	cat presentation-packages.sty >> $@
	cat colors.sty >> $@
	cat presentation-settings.sty >> $@
	cat presentation-math-environment.sty >> @a
	cat commandsAndDeclarations.sty >> $@
	echo "presentation.sty updated."

presentationQ.sty:
	truncate -s 0 $@
	cat quantum-packages.sty >> $@
	cat colors.sty >> $@
	cat presentation-settings.sty >> $@
	cat presentation-math-environment.sty >> $@
	cat QuantumCommandsAndDeclarations.sty >> $@
	echo "presentationQ.sty updated."

symbols.sty:
	truncate -s 0 $@
	cat symbols-packages.sty >> $@
	cat colors.sty >> $@
	cat symbols-math-environment.sty >> $@
	cat commandsAndDeclarations.sty >> $@
	echo "symbols.sty updated."

quantumsymbols.sty:
	truncate -s 0 $@
	cat quantum-packages.sty >> $@
	cat colors.sty >> $@
	cat quantum-math-environment.sty >> $@
	cat QuantumCommandsAndDeclarations.sty >> $@
	echo "quantumsymbols.sty updated."
