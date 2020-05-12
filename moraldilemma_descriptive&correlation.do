cd e:/moraldilemma // place the unzipped file in E disk of your computer, and change the current working directory

clear
use "E:\moraldilemma\HLM_no less than 5 states.dta"
//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph

putdocx save "global_death_preliminaryanalysis.docx", replace

*-----Descriptive analysis-----
sum2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	     Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_death_s ///
	     using "global_death_preliminaryanalysis.docx", append ///
	     stats(N mean(%9.2f) sd min(%9.0g) median(%9.0g) max(%9.0g)) ///
	     title("Table: Descriptive Results")
		 
*-----Correlation analysis-----
putdocx begin
putdocx pagebreak
corr2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_death_s using "global_death_preliminaryanalysis.docx", append ///
		  star(* 0.1 ** 0.05 *** 0.01) fmt(%4.3f) ///
		  title("Table: Correlation Analysis")
		  
		  

clear
//robustness check by replacing death number with confirmed cases number
use "E:\moraldilemma\HLM_no less than 5 states.dta"
putdocx begin //create a new WORD file
putdocx paragraph
putdocx save "global_cases_preliminaryanalysis.docx", replace

*-----Descriptive analysis-----
sum2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	     Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_cases_s ///
	     using "global_cases_preliminaryanalysis.docx", append ///
		 stats(N mean(%9.2f) sd min(%9.0g) median(%9.0g) max(%9.0g)) ///
		 title("Table: Descriptive Results")
		 
*-----Correlation analysis-----
putdocx begin
putdocx pagebreak
corr2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	      Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_cases_s using "global_cases_preliminaryanalysis.docx", append ///
		  star(* 0.1 ** 0.05 *** 0.01) fmt(%4.3f) ///
		  title("Table: Correlation Analysis")
		  
		  
		  
		  


clear
use "E:\moraldilemma\HLM_full sample.dta"
//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph

putdocx save "global_death_fullsample.docx", replace

*-----Descriptive analysis-----
sum2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	     Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_death_s ///
	     using "global_death_fullsample.docx", append ///
	     stats(N mean(%9.2f) sd min(%9.0g) median(%9.0g) max(%9.0g)) ///
	     title("Table: Descriptive Results")
		 
*-----Correlation analysis-----
putdocx begin
putdocx pagebreak
corr2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_death_s using "global_death_fullsample.docx", append ///
		  star(* 0.1 ** 0.05 *** 0.01) fmt(%4.3f) ///
		  title("Table: Correlation Analysis")
		  
		  

clear
//robustness check by replacing death number with confirmed cases number
use "E:\moraldilemma\HLM_full sample.dta"
putdocx begin //create a new WORD file
putdocx paragraph
putdocx save "global_cases_fullsample.docx", replace

*-----Descriptive analysis-----
sum2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	     Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_cases_s ///
	     using "global_cases_fullsample.docx", append ///
		 stats(N mean(%9.2f) sd min(%9.0g) median(%9.0g) max(%9.0g)) ///
		 title("Table: Descriptive Results")
		 
*-----Correlation analysis-----
putdocx begin
putdocx pagebreak
corr2docx Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	      Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief ln_cases_s using "global_cases_fullsample.docx", append ///
		  star(* 0.1 ** 0.05 *** 0.01) fmt(%4.3f) ///
		  title("Table: Correlation Analysis")
