/* Ignore this part!

stata1_grader.do assignment grader by Tommy Morgan

put all the completed assignment files into $route\data_and_submissions and run stata1_grader.do

the folder needs to contain a copy of gymnasts_stata.dta

output is a log file which allows you to compare student answers to correct answers

*/ // This is the end of the part you should ignore!


*set your route to the data_and_submissions folder
global route "C:\Users\morganto\Desktop\ECON378-main\stata1"
cd "$route\data_and_submissions"

*start a log file that will track the output
cap log close
set linesize 255
log using "$route\stata1_grader_log.txt", text replace nomsg

*run through every file in the folder and grade it
local filenames: dir "$route\data_and_submissions" files "*.do"
foreach f of local filenames {
	
	*clear data
	clear
	
	*run the do file
	quietly do `"`f'"'
	di " "
	di "======================="
	
	*check question 1: identification
	di " "
	di "(+2) $your_name - $your_professor"
	
	*check question 2: directory should still be "$route"
	di " "
	di "(+1) current directory should be $route, currently is:"
	pwd
	
	*check question 3: directory should still be "$route"
	di " "
	di "(+1) if the file didn't break, they get this"
	
	*check question 4: observations in the dataset
	di " "
	di "(+2) Total observations should be 4778, their answer:"
	di "$observations"
	
	*check question 5: destringing the scores
	di " "
	di "(+2) All four events should display below, if not they miss points:"
	ds vault bars beam floor, not(type string)
	
	*check question 6: sixth lowest floor score
	di " "
	di "(+1) Lowest score should be 8.15, their answer:"
	di "$low_score"
	di " "
	di "(+1) The gymnast is Isa Weiss, their answer:"
	di "$gymnast_name"
	di " "
	di "(+1) That gymnast performs for Washington, their answer:"
	di "$her_team"
	
	*check question 7: average score work
	di " "
	di "(+0.5) Utah's average vault score was 9.833642, their answer:"
	di "$utah_average_vault"
	di " "
	di "(+0.5) Utah's average bars score was 9.823844, their answer:"
	di "$utah_average_bars"
	di " "
	di "(+0.5) Utah's average beam score was 9.798851, their answer:"
	di "$utah_average_beam"
	di " "
	di "(+0.5) Utah's average floor score was 9.84023, their answer:"
	di "$utah_average_floor"
	
	di " "
	di "(+0.5) MyKayla's average vault score was 9.921121, their answer:"
	di "$mykayla_average_vault"
	di " "
	di "(+0.5) MyKayla's average bars score was 9.869828, their answer:"
	di "$mykayla_average_bars"
	di " "
	di "(+0.5) MyKayla's average beam score was 9.860345, their answer:"
	di "$mykayla_average_beam"
	di " "
	di "(+0.5) MyKayla's average floor score was 9.943269, their answer:"
	di "$mykayla_average_floor"
	
	*check question 8: dataprep for Obama
	di " "
	di "(+1) Dataset should only contain bars, black, gymnast, meet, and year - their variables:"
	ds, a
	di " "
	qui sum year
	di "(+1) Number of observations should now be 2464, their answer:"
	di r(N)
	di " "
	di "(+2) Give them these points as an assumption, because they'll need the file it makes for the next assignment and it helps keep morale high"
	di " "
	di "======================="
	
	*if they messed up the cd problem, this will change it back
	qui cd "$route\data_and_submissions"
	
	}
	
*close the log file
log close
