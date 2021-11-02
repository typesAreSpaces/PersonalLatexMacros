#!/usr/bin/python

from os import system as cmd

cmd("rm -rf ./presentation.sty")
cmd("touch ./presentation.sty")
cmd("cat ./presentation-packages.sty >> ./presentation.sty")
cmd("cat ./colors.sty >> ./presentation.sty")
cmd("cat ./presentation-colors.sty >> ./presentation.sty")
cmd("cat ./presentation-math-environment.sty >> ./presentation.sty")
cmd("cat ./commandsAndDeclarations.sty >> ./presentation.sty")
