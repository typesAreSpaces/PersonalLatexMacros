all: updatePresentation updateSymbols updateQuantum
	echo "File updated."

updatePresentation:
	truncate -s 0 ./presentation.sty
	cat ./presentation-packages.sty >> ./presentation.sty
	cat ./colors.sty >> ./presentation.sty
	cat ./presentation-settings.sty >> ./presentation.sty
	cat ./presentation-math-environment.sty >> ./presentation.sty
	cat ./commandsAndDeclarations.sty >> ./presentation.sty
	echo "presentation.sty updated."

updateSymbols:
	truncate -s 0 ./symbols.sty
	cat ./symbols-packages.sty >> ./symbols.sty
	cat ./colors.sty >> ./symbols.sty
	cat ./symbols-math-environment.sty >> ./symbols.sty
	cat ./commandsAndDeclarations.sty >> ./symbols.sty
	echo "symbols.sty updated."

updateQuantum:
	truncate -s 0 ./quantumsymbols.sty
	cat ./quantum-packages.sty >> ./quantumsymbols.sty
	cat ./quantum-math-environment.sty >> ./quantumsymbols.sty
	cat ./QuantumCommandsAndDeclarations.sty >> ./quantumsymbols.sty
	echo "quantumsymbols.sty updated."
