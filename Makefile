all: updatePresentation updateSymbols
	echo "File updated."

updatePresentation:
	rm -rf ./presentation.sty
	touch ./presentation.sty
	cat ./presentation-packages.sty >> ./presentation.sty
	cat ./colors.sty >> ./presentation.sty
	cat ./presentation-colors.sty >> ./presentation.sty
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

.PHONY: clean

clean:
	rm -rf ./presentation.sty ./symbols.sty
