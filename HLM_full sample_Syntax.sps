* Encoding: UTF-8.
* this file contains the syntax to run the Hierarchical Linear Model (HLM) with state as level 2, and individual as level 1; we chose random intercept rather than random slope in our analysis
* since state-level death number and confirmed cases are highly correlated, therefore, we use death first, and include confirmed cases in the robust check analysis.

MIXED age WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED gender WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED ses WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED crime WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED survival WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED infection WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED ventidays WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED family WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED cost WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED nationality WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_death_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).



*Robust check analysis with state-level confirmed cases number.
MIXED age WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED gender WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED ses WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s  
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED crime WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED survival WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED infection WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED ventidays WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED family WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED cost WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).


MIXED nationality WITH Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s 
 /FIXED=INTERCEPT Health_status Impact_on_life Trust_in_gov Identity Political_orientation
Income_disclose Contribution Rich_notwith_better Age_A Gender_A Income Socioeconomic_status Education Science Art Religious_belief
ln_cases_s | SSTYPE(3)
 /METHOD=REML
 /PRINT=SOLUTION TESTCOV
 /RANDOM=INTERCEPT | SUBJECT(state_id) COVTYPE(UN).
