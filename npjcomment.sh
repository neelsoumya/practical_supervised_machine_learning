#!/bin/sh

./compile_latex.sh cover_letter_AISociety.tex; cp cover_letter_AISociety.pdf ~/Downloads/npj_mh_comment/; cp AI_society_paper.pdf ~/Downloads/npj_mh_comment;  cd ~/Downloads/npj_mh_comment; mv cover_letter_AISociety.pdf cover_letter.pdf; mv AI_society_paper.pdf comment_npj.pdf;  cd ~/cam_project/manuscript ;


