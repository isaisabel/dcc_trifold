#!/bin/sh
latexmk -quiet -pdf trifold.tex
latexmk -c
rm -rf output
mkdir output
pdftk A=trifold.pdf cat 2-3 output output/wizard.pdf
pdftk A=trifold.pdf cat 5-6 output output/cleric.pdf
pdftk A=trifold.pdf cat 8-9 output output/warrior.pdf
pdftk A=trifold.pdf cat 11-12 output output/thief.pdf
pdftk A=trifold.pdf cat 14-15 output output/dwarf.pdf
pdftk A=trifold.pdf cat 17-18 output output/elf.pdf
pdftk A=trifold.pdf cat 20-21 output output/halfling.pdf
pdftk A=trifold.pdf cat 23-24 output output/druid.pdf
pdftk A=trifold.pdf cat 26-27 output output/witch.pdf

pdftk A=output/wizard.pdf rotate 2south output output/wizard-printable.pdf
pdftk A=output/cleric.pdf rotate 2south output output/cleric-printable.pdf
pdftk A=output/warrior.pdf rotate 2south output output/warrior-printable.pdf
pdftk A=output/thief.pdf rotate 2south output output/thief-printable.pdf
pdftk A=output/dwarf.pdf rotate 2south output output/dwarf-printable.pdf
pdftk A=output/elf.pdf rotate 2south output output/elf-printable.pdf
pdftk A=output/halfling.pdf rotate 2south output output/halfling-printable.pdf
pdftk A=output/druid.pdf rotate 2south output output/druid-printable.pdf
pdftk A=output/witch.pdf rotate 2south output output/witch-printable.pdf

pdftk output/*-printable.pdf cat output output/all-printable.pdf

rm trifold.pdf