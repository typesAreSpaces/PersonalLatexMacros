all: symbols.sty quantumsymbols.sty \
	presentation.sty presentationQ.sty 
	echo "LaTeX macros updated."

symbols.sty: symbols-packages.sty colors.sty \
	symbols-math-environment.sty \
	commandsAndDeclarations.sty
	truncate -s 0 $@
	cat $^ > $@
	echo "symbols.sty updated."

quantumsymbols.sty: quantum-packages.sty colors.sty \
	quantum-math-environment.sty \
	QuantumCommandsAndDeclarations.sty
	truncate -s 0 $@
	cat $^ > $@
	echo "quantumsymbols.sty updated."

presentation.sty: presentation-packages.sty colors.sty \
	presentation-settings.sty presentation-math-environment.sty \
	commandsAndDeclarations.sty
	truncate -s 0 $@
	cat $^ > $@	
	echo "presentation.sty updated."

presentationQ.sty: presentationQ-packages.sty colors.sty \
	presentation-settings.sty presentation-math-environment.sty \
	QuantumCommandsAndDeclarations.sty
	truncate -s 0 $@
	cat $^ > $@	
	echo "presentationQ.sty updated."

.PHONY: clean

clean:
	rm -rf *.aux
	rm -rf *.fdb_latexmk
	rm -rf *.fls
	rm -rf *.log
