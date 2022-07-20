/* Ignore this part!

stata1.do assignment design by Tommy Morgan

put all the completed assignment files into $route\stata1\data_and_submissions with a copy of whatever files get used and run stata1_grader.do

*/ // This is the end of the part you should ignore!


***********
*Question 1
***********

*global for the student's name (replace ####)
global your_name ####

*global for who teaches their class (replace ####)
global your_professor ####


***********
*Question 2
***********

*tell Stata to look in the correct folder (change the path)
cd "C:\filepath\checkthebottomleftcornerofcommandmodeforpathhints"

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
global observations ####


***********
*Question 5
***********

*finish the destring command so that it replaces the events with numeric versions
destring vault bars beam floor, 


***********
*Question 6
***********

*global for the sixth lowest floor score (replace ####)
global low_score ####

*global for the gymnast's name (replace ####)
global gymnast_name ####

*global for that gymnast's team (replace ####)
global her_team ####


***********
*Question 7
***********

*the four Utah average event score globals (replace ####)
global utah_average_vault ####
global utah_average_bars ####
global utah_average_beam ####
global utah_average_floor ####

*global for MyKayla Skinner's average total score (replace ####)
global mykayla_average_vault ####
global mykayla_average_bars ####
global mykayla_average_beam ####
global mykayla_average_floor ####


***********
*Question 8
***********

*drop the unneeded variables (replace ####)
drop #### #### #### #### ####

*drop the observations that don't have bars scores (replace ####)
drop if #### == .

*export a comma-separated values file (replace ####)
export #### data_for_obama, replace

// The modified file you built for the Obama Foundation will be saved in the same folder where you downloaded the first file! It will be useful later, so keep track of it!


******************
*End of Assignment
******************





