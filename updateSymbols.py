#!/usr/bin/python

from os import system as cmd

cmd("rm -rf ./symbols.sty")
cmd("touch ./symbols.sty")
cmd("cat ./symbols-packages.sty >> ./symbols.sty")
cmd("cat ./colors.sty >> ./symbols.sty")
cmd("cat ./symbols-math-environment.sty >> ./symbols.sty")
cmd("cat ./commandsAndDeclarations.sty >> ./symbols.sty")
