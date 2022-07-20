/* Ignore this part!

HW11.do assignment design by Tommy Morgan

put all the completed assignment files into $route\HW11_folder with a copy of whatever files get used and run HW11_grader.do

*/ // This is the end of the part you should ignore!


***********
*Question 1
***********

*global for the student's name (replace ####)
global your_name Tommy Morgan

*global for who teaches their class (replace ####)
global your_professor Dr. Jensen


***********
*Question 2
***********

*did you comment all of the lines you wrote? (replace #### with yes/no)
global i_promise_i_commented yes


***********
*Question 3
***********

cd "C:\Users\morganto\Desktop\ECON378-main\stata2\data_and_submissions"

import delimited using data_for_obama, clear


***********
*Question 4
***********

// go back and comment out the cd command from Q3


***********
*Question 5
***********

*global for correlation between bars scores and meet number for Black gymnasts (replace ####)
global black_bars_meet 0.0591

*global for correlation between bars scores and meet number for non-Black gymnasts (replace ####)
global nonblack_bars_meet 0.0626


***********
*Question 6
***********

*change the directory
cd "C:\Users\morganto\Desktop\ECON378-main\stata2\data_and_submissions"

*use the old intern's file
use idk_lol, clear

// comment that directory changing command out!

*rename the variables
rename (var1 var2) (years_of_education household_income)

*destring household_income
destring household_income, replace force

*recode the education values to match the original labels
recode years_of_education (1=0) (3=1) (4=2) (5=3) (6=4) (7=5) (8=6) (9=7) (10=8) (11=9) (12=10) (13=11) (14=12) (15=13) (16=14) (17=15) (18=16) (19=17) (20=18) (21=19) (22=20) (23=21) (99=.)

*drop the labels (optional)
label drop higrade_lbl

*global for the constant term from the regression (replace ####)
global beta_not 2269018

*global for the education coefficient from the regression (replace ####)
global beta_one -77728.34 


******************
*End of Assignment
******************





