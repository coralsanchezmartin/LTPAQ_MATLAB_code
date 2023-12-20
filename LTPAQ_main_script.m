
clc; % clears commmand window
clear; % clears workspace variables

% Access met equivalences files
[Job_list, Exercise_list] = open_met_equivalences_funct;


% Access databases
[Oc_data, Hoh_data, Ex_data] = open_databases_funct;


% calls function that works on the occupational and volunteer db: returns
% total mets for all jobs and transportation in all subjects.
[total_mets_jobs_all_subjects, total_mets_trans_all_subjects] ...
    = occ_data_funct(Oc_data, Job_list);

% calls function that returns total mets per hoh entry for all subjects
[total_mets_hoh_all_subjects] = hoh_data_funct(Hoh_data);

% calls function that returns total mets per exercise for all subjects
[total_mets_exercise_all_subjects] = exer_data_funct(Ex_data, Exercise_list);


% operates on successive elements in the rows of an array and returns a column vector of the sums of each row.
worklife_mets = sum(fillmissing(total_mets_jobs_all_subjects, 'constant',0),2);
transportation_lifetime_mets = sum(fillmissing(total_mets_trans_all_subjects, 'constant',0),2);

hoh_lifetime_mets = sum(fillmissing(total_mets_hoh_all_subjects, 'constant',0),2);
exercise_lifetime_mets = sum(fillmissing(total_mets_exercise_all_subjects, 'constant',0),2);

% add total mets in each section to get lifetime total mets
worklife_trans_total_mets = worklife_mets + transportation_lifetime_mets;

lifetime_total_mets = worklife_trans_total_mets + hoh_lifetime_mets + exercise_lifetime_mets;

% gets id column from Oc_data table
id_cell = Oc_data{:, 1};

% unifies all total mets arrays into one and transforms it into a cell
lifetime_mets_cell = num2cell([worklife_mets, worklife_trans_total_mets, hoh_lifetime_mets, ...
    exercise_lifetime_mets, lifetime_total_mets]);

% adds the id column to the new unified columns
id_lifetime_mets_cell = [id_cell, lifetime_mets_cell];

% turns this cell into a table adding the headers
lifetime_total_mets_table = cell2table(id_lifetime_mets_cell,'VariableNames',{'ID', 'worklife_mets',...
    'worklife_trans_total_mets', 'hoh_lifetime_mets', 'exercise_lifetime_mets', 'lifetime_total_mets'});

% gets basic info columns from table Oc_data
basic_info_data_table = Oc_data(:, 1:5);

% joins this columns to the new generated table
mergedData = join(basic_info_data_table,lifetime_total_mets_table);

% generate the current date and time string
currentDateTime = string(datetime('now', 'Format','y-M-d_HH-mm-ss'));

% create the file name with the date and time
fileName = sprintf('Results\\%s_Results_Lifetime_mets.xlsx', currentDateTime);

% creates a new excel with this table
writetable(mergedData,fileName);


fprintf('All done\n')


