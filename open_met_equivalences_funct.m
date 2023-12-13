
function [Job_list, Exercise_list] = open_met_equivalences_funct

% opens the excel files containing the met equivalence for the list of jobs
% and exercises as tables and stores them in variables:

Job_list = readtable("Lists\Job_list.xlsx");
Exercise_list = readtable("Lists\Exercise_list.xlsx");