#!/bin/bash

# Integrated pipeline shellscript to copy bib file, compile latex
# and then push to git

# copy bib file on mac
./copy_bib_linux.sh

# compile latex
./statement_compile.sh


# add to git
./git_addcommitpush.sh
