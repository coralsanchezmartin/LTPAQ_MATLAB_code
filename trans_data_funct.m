

% function that takes a table and the total years per job and returns total
% mets per transportation

function [total_mets_walk, total_mets_bike, total_mets_roller, total_mets_run, ...
    total_mets_other ] = trans_data_funct(t, total_years_jobs)
    
    % gets arrays of time variables a day for each job and mean of transport
    % and fills in the NaN values with constant 0
    

    months_y_walk = fillmissing(t{1,20:39:end},'constant',0);
    days_w_walk = fillmissing(t{1,21:39:end},'constant',0);
    hours_d_walk = fillmissing(t{1,22:39:end},'constant',0);
    mins_d_walk = fillmissing(t{1,23:39:end},'constant',0);
    
    % it then calls total_mets_funct that takes this time variables and 
    % met_values array or a constant value of met (walk: 4, bike: 6.8,
    % roller:7, run:6) and returns total mets per job.

    [total_mets_walk] = total_mets_funct(4, months_y_walk, days_w_walk, ...
    hours_d_walk, mins_d_walk, total_years_jobs);
    
    months_y_bike = fillmissing(t{1,25:39:end},'constant',0);
    days_w_bike = fillmissing(t{1,26:39:end},'constant',0);
    hours_d_bike = fillmissing(t{1,27:39:end},'constant',0);
    mins_d_bike = fillmissing(t{1,28:39:end},'constant',0);

    [total_mets_bike] = total_mets_funct(6.8, months_y_bike, days_w_bike, ...
    hours_d_bike, mins_d_bike, total_years_jobs);

    months_y_roller = fillmissing(t{1,30:39:end},'constant',0);
    days_w_roller = fillmissing(t{1,31:39:end},'constant',0);
    hours_d_roller = fillmissing(t{1,32:39:end},'constant',0);
    mins_d_roller = fillmissing(t{1,33:39:end},'constant',0);

    [total_mets_roller] = total_mets_funct(7, months_y_roller, days_w_roller, ...
    hours_d_roller, mins_d_roller, total_years_jobs);

    months_y_run = fillmissing(t{1,35:39:end},'constant',0);
    days_w_run = fillmissing(t{1,36:39:end},'constant',0);
    hours_d_run = fillmissing(t{1,37:39:end},'constant',0);
    mins_d_run = fillmissing(t{1,38:39:end},'constant',0);

    [total_mets_run] = total_mets_funct(6, months_y_run, days_w_run, ...
    hours_d_run, mins_d_run, total_years_jobs);
    
    % for Other, instead of a constant met value, it gets the met value
    % from a column in the table
    met_value_other = fillmissing(t{1,40:39:end},'constant',0);
    months_y_other = fillmissing(t{1,41:39:end},'constant',0);
    days_w_other = fillmissing(t{1,42:39:end},'constant',0);
    hours_d_other = fillmissing(t{1,43:39:end},'constant',0);
    mins_d_other = fillmissing(t{1,44:39:end},'constant',0);

    [total_mets_other] = total_mets_funct(met_value_other, months_y_other, days_w_other, ...
    hours_d_other, mins_d_other, total_years_jobs);






