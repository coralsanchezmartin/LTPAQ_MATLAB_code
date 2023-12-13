
% function that calculates total mets per job getting data from a
% table and a met_values array.

function [total_mets_jobs, total_years_jobs] = time_calculations_job_funct(t, met_values)

    total_years_jobs = t {1,12:39:end} - t{1,11:39:end}; % gets an array of the total years calculation 
    % (age_ended - age_started) for each job
    total_years_jobs(total_years_jobs==0) = 1; % avoids error: if total years is 0, it changes it to 1
    % this could happen when the start and end age are the same 
    months_jobs = t{1,13:39:end}; % gets array of months a year for each job
    days_week_jobs = t{1,14:39:end}; % gets array of days a week for each job
    minutes_day_jobs = t{1,16:39:end}; % gets array of minutes a day for each job
    minutes_day_jobs = fillmissing(minutes_day_jobs,'constant',0); % fills NaN values in the minutes_day_jobs array
    % with constant value 0
    hours_day_jobs_missing = fillmissing(t{1,15:39:end},'constant',0); % gets array of hours a day for each jobs and
    % fills in the NaN values with constant 0


    % calls total_mets_funct that takes time variables and met_values array
    % and returns total mets per job, the array returned by the main
    % function
    [total_mets_jobs] = total_mets_funct(met_values, months_jobs, days_week_jobs, ...
    hours_day_jobs_missing, minutes_day_jobs, total_years_jobs);

