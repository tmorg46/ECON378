/* Ignore this part!

HW10.do assignment design by Tommy Morgan

put all the completed assignment files into $route\HW10_folder with a copy of whatever files get used and run HW10_grader.do

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

*tell Stata to look in the correct folder (change the path)
cd "C:\Users\morganto\Desktop\ECON378-main\stata1\data_and_submissions"

*open the gymnasts_stata.dta dataset (don't edit)
use gymnasts_stata, clear


***********
*Question 3
***********

// Use an asterisk * to comment out line 26! Free point!


***********
*Question 4
***********

*global for the number of observations in the dataset (replace ####)
global observations 4778


***********
*Question 5
***********

*finish the destring command so that it replaces the events with numeric versions
destring vault bars beam floor, replace force


***********
*Question 6
***********

*global for the sixth lowest floor score (replace ####)
global low_score 8.15

*global for the gymnast's name (replace ####)
global gymnast_name Isa Weiss

*global for that gymnast's team (replace ####)
global her_team Washington


***********
*Question 7
***********

*the four Utah average event score globals (replace ####)
global utah_average_vault 9.833642
global utah_average_bars 9.823844
global utah_average_beam 9.798851
global utah_average_floor 9.84023

*global for MyKayla Skinner's average total score (replace ####)
global mykayla_average_vault 9.921121
global mykayla_average_bars 9.869828
global mykayla_average_beam 9.860345
global mykayla_average_floor 9.943269


***********
*Question 8
***********

*drop the unneeded variables (replace ####)
drop vault beam floor team host

*drop the observations that don't have bars scores (replace ####)
drop if bars == .

*export a comma-separated values file (replace ####)
export delimited data_for_obama, replace

// The modified file you built for the Obama Foundation will be saved in the same folder where you downloaded the first file! It will be useful later, so keep track of it!


******************
*End of Assignment
******************





