
function [total_mets_hoh_all_subjects ] = hoh_data_funct(Hoh_data)

% Working on the hoh db:

total_mets_hoh_all_subjects = [];% starts empty array, that will store total 
% mets for each hoh entry in each subject, this is the array that the function will return

for i = 1:height(Hoh_data) % iterate on each subject (row)
    
    t = Hoh_data(i,:); % for each subject gets all elements in columns (table)

    total_years_hoh = t {1,7:9:end} - t{1,6:9:end}; % gets an array of the total years calculation 
    % (age_ended - age_started) fo each hoh entry
    total_years_hoh(total_years_hoh==0) = 1; % avoids error: if total years is 0, it changes it to 1
    % this could happen when the start and end age are the same 
    
    months_y_hoh = t{1,8:9:end}; % gets array of months a year for each hoh entry
    days_week_hoh = t{1,9:9:end}; % gets array of days a week for each hoh entry

    % with array multiplication, calculates totals for time variables
    
    total_months_hoh = total_years_hoh .* months_y_hoh;

    total_days_hoh = (total_months_hoh .* days_week_hoh)*4; % 4 weeks each month
    
    
    % gets array of hours a day for each hoh entry from the 3 intensity categories, 
    % fills in the NaN values with constant 0 and multiplies the hours/day by the
    % corresponding met value to each intensity category (cat 2: 2.5, cat 3:3.5, cat 4: 4.5)

    mets_hour_day_hoh_cat_2 = (fillmissing(t{1,12:9:end},'constant',0)) .* 2.5;
    mets_hour_day_hoh_cat_3 = (fillmissing(t{1,13:9:end},'constant',0)) .* 3.5;
    mets_hour_day_hoh_cat_4 = (fillmissing(t{1,14:9:end},'constant',0)) .* 4.5;
    
    % multiplies total days with met_hours in each category

    total_mets_hoh_cat_2= mets_hour_day_hoh_cat_2 .* total_days_hoh;
    total_mets_hoh_cat_3= mets_hour_day_hoh_cat_3 .* total_days_hoh;
    total_mets_hoh_cat_4= mets_hour_day_hoh_cat_4 .* total_days_hoh;
    
    % adds up total mets per intensity category
    total_mets_hoh = total_mets_hoh_cat_2 + total_mets_hoh_cat_3 + total_mets_hoh_cat_4;

    % keeps adding total mets/h per hoh entry to an array that will be returned
    % by this function

    total_mets_hoh_all_subjects = [total_mets_hoh_all_subjects; total_mets_hoh];


end