#!/bin/sh
latexmk -quiet -pdf trifold.tex
latexmk -c
rm -rf output
mkdir output
pdftk A=trifold.pdf cat 2-3 output output/wizard-noflip.pdf
pdftk A=trifold.pdf cat 5-6 output output/cleric-noflip.pdf
pdftk A=trifold.pdf cat 8-9 output output/warrior-noflip.pdf
pdftk A=trifold.pdf cat 11-12 output output/thief-noflip.pdf
pdftk A=trifold.pdf cat 14-15 output output/dwarf-noflip.pdf
pdftk A=trifold.pdf cat 17-18 output output/elf-noflip.pdf
pdftk A=trifold.pdf cat 20-21 output output/halfling-noflip.pdf

pdftk A=output/wizard-noflip.pdf rotate 2south output output/wizard.pdf
pdftk A=output/cleric-noflip.pdf rotate 2south output output/cleric.pdf
pdftk A=output/warrior-noflip.pdf rotate 2south output output/warrior.pdf
pdftk A=output/thief-noflip.pdf rotate 2south output output/thief.pdf
pdftk A=output/dwarf-noflip.pdf rotate 2south output output/dwarf.pdf
pdftk A=output/elf-noflip.pdf rotate 2south output output/elf.pdf
pdftk A=output/halfling-noflip.pdf rotate 2south output output/halfling.pdf

rm trifold.pdf