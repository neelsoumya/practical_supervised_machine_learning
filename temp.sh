#!/bin/sh

./copy_bib_mac.sh;  git pull; git add *.tex review/*.tex *.bib *.txt *.docx *.sh; git commit -m "edits"; git push; cd review; ./statement_compile_pdflatex.sh; cp REBUTTAL_REVIEWERS_NPJSchz.pdf RESPONSE_REVIEWERS_NPJSchz.pdf; cd .. ; ./compile_latex.sh paper_mortality_npj.tex ; ./compile_latex.sh paper_mortality_npj_unmarked.tex; ./compile_latex.sh cover_letter_survival_short2.tex; ./compile_latex.sh paper_mortality_npj_unmarked_SUPP.tex;  ./compile_latex.sh paper_mortality_npj_unmarked_FINAL.tex;  cp paper_mortality_npj_unmarked_FINAL.tex figures/temp_npj/ ; cp paper_mortality_npj_unmarked_FINAL.pdf figures/temp_npj/;  cd figures/temp_npj/; ./compile_latex.sh paper_mortality_npj_unmarked_FINAL_bibcontained.tex ; ./compile_latex.sh paper_mortality_npj_unmarked_FINAL_bibcontained_marked.tex ;  cd ../.. ; ./compile_latex.sh msc_projects.tex;   # ./compile_latex.sh 2_mediumbrief_communication.tex; cp 2_mediumbrief_communication.pdf PPI_AI_trust_manuscript_patterns.pdf; ./compile_latex.sh cover_letter_mediumbrief_communication.tex; cp cover_letter_mediumbrief_communication.pdf cover_letter_PPI_AI_trust_patterns.pdf; ./compile_latex.sh 2_mediumbrief_communication_unmarked.tex; 2_mediumbrief_communication_unmarked.pdf PPI_AI_trust_manuscript_patterns_unmarked.pdf  


./copy_bib_mac.sh;  git pull; git add *.tex review/*.tex *.bib *.txt *.docx *.doc *.sh; git commit -m "edits"; git push; cd review; ./statement_compile_pdflatex.sh; cp REBUTTAL_REVIEWERS_NPJSchz.pdf RESPONSE_REVIEWERS_NPJSchz.pdf; cd .. ; ./compile_latex.sh paper_mortality_npj.tex ; ./compile_latex.sh paper_mortality_npj_unmarked.tex; ./compile_latex.sh cover_letter_survival_short2.tex; ./compile_latex.sh paper_mortality_npj_unmarked_SUPP.tex;  ./compile_latex.sh paper_mortality_npj_unmarked_FINAL.tex;  cp paper_mortality_npj_unmarked_FINAL.tex figures/temp_npj/ ; cp paper_mortality_npj_unmarked_FINAL.pdf figures/temp_npj/;  cd figures/temp_npj/; ./compile_latex.sh paper_mortality_npj_unmarked_FINAL_bibcontained.tex ; ./compile_latex.sh paper_mortality_npj_unmarked_FINAL_bibcontained_marked.tex ;  cd ../.. ; ./compile_latex.sh msc_projects.tex;   # ./compile_latex.sh 2_mediumbrief_communication.tex; cp 2_mediumbrief_communication.pdf PPI_AI_trust_manuscript_patterns.pdf; ./compile_latex.sh cover_letter_mediumbrief_communication.tex; cp cover_letter_mediumbrief_communication.pdf cover_letter_PPI_AI_trust_patterns.pdf; ./compile_latex.sh 2_mediumbrief_communication_unmarked.tex; cp 2_mediumbrief_communication_unmarked.pdf PPI_AI_trust_manuscript_patterns_unmarked.pdf
