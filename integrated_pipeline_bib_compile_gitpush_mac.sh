#!/bin/bash

# Integrated pipeline shellscript to copy bib file, compile latex
# and then push to git

# copy bib file on mac
./copy_bib_mac.sh

# compile latex
./statement_compile.sh
./compile_latex.sh scoping_document.tex 
./compile_latex.sh machine_learning.tex
./compile_latex.sh clinical_data.tex
./compile_latex.sh database_schema.tex

# add to git
./git_addcommitpush.sh
