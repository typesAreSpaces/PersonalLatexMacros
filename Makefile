all: updatePresentation updateSymbols updateQuantum
	echo "File updated."

updatePresentation:
	rm -rf ./presentation.sty
	touch ./presentation.sty
	cat ./presentation-packages.sty >> ./presentation.sty
	cat ./colors.sty >> ./presentation.sty
	cat ./presentation-settings.sty >> ./presentation.sty
	cat ./presentation-math-environment.sty >> ./presentation.sty
	cat ./commandsAndDeclarations.sty >> ./presentation.sty
	echo "presentation.sty updated."

updateSymbols:
	rm -rf ./symbols.sty
	touch ./symbols.sty
	cat ./symbols-packages.sty >> ./symbols.sty
	cat ./colors.sty >> ./symbols.sty
	cat ./symbols-math-environment.sty >> ./symbols.sty
	cat ./commandsAndDeclarations.sty >> ./symbols.sty
	echo "symbols.sty updated."

updateQuantum:
	rm -rf ./quantum_symbols.sty
	touch ./quantum_symbols.sty
	cat ./quantum-packages.sty >> ./quantum_symbols.sty
	cat ./quantum-math-environment.sty >> ./quantum_symbols.sty
	cat ./QuantumCommandsAndDeclarations.sty >> ./quantum_symbols.sty
	echo "quantum_symbols.sty updated."

.PHONY: clean

clean:
	rm -rf ./presentation.sty 
	rm -rf ./symbols.sty 
	rm -rf ./quantum_symbols.sty 
