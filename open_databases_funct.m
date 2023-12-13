
function [Oc_data, Hoh_data, Ex_data] = open_databases_funct
% opens the different sheets of the database as tables and stores each of 
% them in a variable: when accesing different sheets 'Sheet', string 
% containing the worksheet name.

% Occupational and Volunteer db
Oc_data = readtable("DB_LTPAQ.xlsx",'Sheet', "DB_OC_VO");
% Household activities db
Hoh_data = readtable("DB_LTPAQ.xlsx" ,'Sheet', "DB_HOH");
% Exercise db
Ex_data = readtable("DB_LTPAQ.xlsx" ,'Sheet', "DB_EXER_SPORT");
