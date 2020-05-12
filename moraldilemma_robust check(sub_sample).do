cd e:/moraldilemma // place the unzipped file in E disk of your computer, and change the current working directory

clear
use "E:\moraldilemma\au.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "au_results_cases.docx", replace

*-----regression analysis-----
//because there is multicollinearity issues between death and confirmed cases, we use confirmed cases in the robustness check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "au_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (Australia)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "au_results_cases.docx"


clear
use "E:\moraldilemma\br.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "br_results_cases.docx", replace



//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "br_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (Brazil)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "br_results_cases.docx"




clear
use "E:\moraldilemma\cn.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "cn_results_cases.docx", replace


//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "cn_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (China)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "cn_results_cases.docx"




clear
use "E:\moraldilemma\fr.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "fr_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "fr_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (France)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "fr_results_cases.docx"




clear
use "E:\moraldilemma\de.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "de_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "de_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (Germany)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "de_results_cases.docx"




clear
use "E:\moraldilemma\in.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "in_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "in_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (India)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "in_results_cases.docx"




clear
use "E:\moraldilemma\it.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "it_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "it_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (Italy)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "it_results_cases.docx"




clear
use "E:\moraldilemma\sp.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "sp_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "sp_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (Spain)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "sp_results_cases.docx"




clear
use "E:\moraldilemma\sk.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "sk_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "sk_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (South Korea)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "sk_results_cases.docx"




clear
use "E:\moraldilemma\uk.dta"

//save the results in a WORD file
putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "uk_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "uk_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (UK)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "uk_results_cases.docx"



clear
use "E:\moraldilemma\us.dta"

putdocx begin //create a new WORD file
putdocx paragraph //
putdocx save "us_results_cases.docx", replace

//because there is multicollinearity issues between death and confirmed cases, we use death in the regression results and include cases in the robust check
reg age Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m1

reg gender Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m2

reg ses Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m3

reg crime Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m4

reg survival Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m5

reg infection Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m6

reg ventidays Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m7

reg family Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m8

reg cost Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m9

reg nationality Health_status Impact_on_life Trust_in_gov Identity Political_orientation ///
	  Income_disclose Contribution Rich_notwith_better Age Gender Income Socioeconomic_status Education Art Science Religious_belief Ln_cases
est store m10	

reg2docx m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using "us_results_cases.docx", append ///
	scalars(N r2(%9.3f) r2_a(%9.3f)) b(%9.3f) t(%7.2f) ///
	title("Table: Regression Results (US)") mtitles("age" "gender" "ses" "crime" "survival" "# of infecting others" "ventilator days" "family" "cost" "nationality") 

shellout "us_results_cases.docx" /*check the us regression result*/
