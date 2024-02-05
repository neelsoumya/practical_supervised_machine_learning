# practical_supervised_machine_learning

## Introduction

Resources for a practical on supervised machine learning


## Code

The Rmarkdown scripts and R scripts constitute the practical.

`cross_validation_practical.Rmd` shows the basics of cross-validation.

`Ch8-baggboost-lab.Rmd` shows the basics of decision trees and random forests (bagging and boosting).

`caret_rf.Rmd` shows the basics of using the `caret` package in R to build a machine learning pipeline.

## Installation

Clone or download this repository. 

Then install R and R Studio. 

* Install R

    https://www.r-project.org/

* and R Studio

https://www.rstudio.com/products/rstudio/download/preview/


From the command line run the R script `installer.R` to install all packages

```R
R --no-save < installer.R
```

OR

run the script `installer.R` in R Studio.


## Extra credit

For extra credit, do these problems.

* Download data from

https://github.com/neelsoumya/teaching_reproducible_science_R/blob/main/metagene_score.csv

and train a classifier to predict yes/no (flag_yes_no). This would be a binary classifier. Do this with cross-validation.

The data is also available here

https://github.com/neelsoumya/practical_supervised_machine_learning/blob/main/metagene_score.csv

* Download data from

https://archive.ics.uci.edu/dataset/2/adult

and train a classifier to predict if income > 50K or < 50K (binary classifier). Do this with cross-validation.

The data is also available in the `adult` folder here

https://github.com/neelsoumya/practical_supervised_machine_learning/tree/main/adult


## Resources

Free PDF of book and R code 

* https://www.statlearning.com/

* https://www.statlearning.com/resources-second-edition


More practical tutorials and R code

* https://cambiotraining.github.io/intro-machine-learning/


## Acknowledgements

All material is take from the following resources:

* https://www.statlearning.com/resources-second-edition

* https://cambiotraining.github.io/intro-machine-learning/



## Contact

Soumya Banerjee
