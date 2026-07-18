all: updatePresentation updateSymbols updateJose
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

updateJose:
	rm -rf ./jose.sty
	touch ./jose.sty
	cat ./jose-packages.sty >> ./jose.sty
	cat ./jose-math-environment.sty >> ./jose.sty
	cat ./QuantumCommandsAndDeclarations.sty >> ./jose.sty
	echo "jose.sty updated."

.PHONY: clean

clean:
	rm -rf ./presentation.sty 
	rm -rf ./symbols.sty 
	rm -rf ./jose.sty 
