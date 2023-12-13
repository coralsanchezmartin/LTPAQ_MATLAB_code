
function [total_mets_jobs_all_subjects, total_mets_trans_all_subjects] = occ_data_funct(Oc_data, Job_list)

% Working on the occupational and volunteer db:

total_mets_jobs_all_subjects = []; % starts empty array, that will store met/h values for each job in each subject, 
% this is the array that the function will return

% start empty arrays that will store met/h values for each mean of transport 
% per job in each subject
total_mets_walk_all_subjects = [];
total_mets_bike_all_subjects = [];
total_mets_roller_all_subjects = [];
total_mets_run_all_subjects = [];
total_mets_other_all_subjects = [];


for i = 1:height(Oc_data) % iterate on each subject (row)

    % FOR EACH SUBJECT:

    t = Oc_data(i,:); % gets all elements in columns (table)
    % keyboard % debugger
    
    % calls code_jobs_to_mets function that returns met values per job
    [met_values] = code_jobs_to_mets_funct(t, Job_list);

    % calls time_calculations_job function that returns total mets per job
    % and total years per job
    [total_mets_jobs, total_years_jobs] = time_calculations_job_funct(t, met_values);
    

    % keeps adding total mets/h per job to an array that will be returned
    % by this function
    total_mets_jobs_all_subjects = [total_mets_jobs_all_subjects; total_mets_jobs];


    % calls trans_data_funct that returns total mets per transportation
    [total_mets_walk, total_mets_bike, total_mets_roller, total_mets_run, ...
    total_mets_other ] = trans_data_funct(t, total_years_jobs);

    % keeps adding total mets per transportation to an array
    total_mets_walk_all_subjects = [total_mets_walk_all_subjects; total_mets_walk];
    total_mets_bike_all_subjects = [total_mets_bike_all_subjects; total_mets_bike];
    total_mets_roller_all_subjects = [total_mets_roller_all_subjects; total_mets_roller];
    total_mets_run_all_subjects = [total_mets_run_all_subjects; total_mets_run];
    total_mets_other_all_subjects = [total_mets_other_all_subjects;total_mets_other];

    % adds all total_mets_per_transportation arrays, this new array will be
    % returned by the function
    total_mets_trans_all_subjects = total_mets_walk_all_subjects + total_mets_bike_all_subjects... 
    + total_mets_roller_all_subjects + total_mets_run_all_subjects + total_mets_other_all_subjects;








end % end of for loop

