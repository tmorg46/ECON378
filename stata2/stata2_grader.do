/* Ignore this part!

stata2_grader.do assignment grader by Tommy Morgan

put all the completed assignment files into $route\data_and_submissions and run stata2_grader.do

the folder needs to contain a copy of data_for_obama.csv from stata1 and a copy of idk_lol.dta

output is a log file which allows you to compare student answers to correct answers

*/ // This is the end of the part you should ignore!


*set your route to the stata_graders folder
global route "V:\FHSS-JoePriceResearch\RA_work_folders\Tommy_Morgan\ECON378\stata2"
cd "$route\data_and_submissions"

*start a log file that will track the output
cap log close
set linesize 255
log using "$route\stata2_grader_log.txt", text replace nomsg

*run through every file in the folder
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
	
	*check question 2: did they comment their code?
	di " "
	di "(Bonus +2) Did they comment their code? Their answer:"
	di "$i_promise_i_commented"
	
	*check questions 3 and 4: the import delimited command and commenting out the cd
	di " "
	di "(+3) if the file runs, they get these points"
	
	*check question 5: correlations
	di " "
	di "(+1) black_bars_meet should be 0.0591, their answer:"
	di "$black_bars_meet"
	di " "
	di "(+1) nonblack_bars_meet should be 0.0626, their answer:"
	di "$black_bars_allaround"

	*check question 6: the idk_lol file
	di " "
	di "(+3) Varlist should be household_~e, years_of_e~n; also, if this breaks, they didn't comment out the cd. Their varlist:"
	ds, a
	di " "
	qui sum household_income
	di "(+2) Average of hhinc should be around 1537408, their answer: "
	di r(mean)
	di " "
	qui sum years_of_education
	di "(+4) Average of education should be around 9.521715 (no recode is ~13), their answer:"
	di r(mean)
	di " "
	
	di "(+2) Beta_not should be 2269018 and beta_one should be -77728.34, their answers:"
	di "beta_not: $beta_not || beta_one: $beta_one"
	di " "
	di "======================="
	
	*if they messed up the cd problem, this will change it back
	qui cd "$route\data_and_submissions"
	
	}
	
*close the log file
log close