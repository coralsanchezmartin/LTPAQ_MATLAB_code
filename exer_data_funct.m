
function [total_mets_exercise_all_subjects] = exer_data_funct(Ex_data, Exercise_list)

% Working on the exercise db:

total_mets_exercise_all_subjects = [];

for i = 1:height(Ex_data) % iterate on each subject (row)

    % FOR EACH SUBJECT:

    t = Ex_data(i,:); % gets all elements in columns (table)
    
    code_ex = fillmissing(t{1, 7:10:end},'constant',0); % gets all exercise codes
    
    current_met = []; % start empty array, that will store met corresponding values for exercises

    for x = code_ex % iterates on each row of code_ex array

        if (x == 0) % if z value is 0
            current_met = [current_met,0]; % it adds a 0 to the final array
            continue % it then continues to the next iteration
        end
        
        met_index = find(Exercise_list.Code_EXERCISE == x,1,"first"); % find the
        % first time this relational operation is true (look for x in
        % Exercise_list.Code_EXERCISE table and store that index in a new variable.

        met_val = Exercise_list.METLevel2011(met_index); % Gets value met_index
        % extracted from table (Exercise_list) variable named METLevel2011
        

        current_met = [current_met,met_val]; % adds met_val to met_value array
 
    end

    total_years_ex = t {1,9:10:end} - t{1,8:10:end}; % gets an array of the total years calculation 
    % (age_ended - age_started) fo each exercise
    total_years_ex(total_years_ex==0) = 1; % avoids error: if total years is 0, it changes it to 1
    % this could happen when the start and end age are the same 
    
    months_y_ex = t{1,12:10:end}; % gets array of months a year for each exercise
    days_week_ex = t{1,11:10:end}; % gets array of days a week for each exercise

    minutes_day_ex = fillmissing(t{1,14:10:end},'constant',0); % gets array of minutes a day for each exercise
    % and fills NaN values in the minutes_day_jobs array with constant value 0

    hours_day_ex = fillmissing(t{1,13:10:end},'constant',0); % gets array of hours a day for each exercise and
    % fills in the NaN values with constant 0
    times_day_ex = t{1,10:10:end};


    % total hours: adds each element of the arrays hours_d and mins_d transformed into hours
    transformed_hours_day_ex = hours_day_ex + minutes_day_ex/60;
    
    % with array multiplication, calculates totals for time variables
    total_months = total_years_ex .* months_y_ex;
    
    total_days = (total_months .* days_week_ex)*4; % 4 weeks each month
        
    total_hours= transformed_hours_day_ex .* total_days .* times_day_ex;

    

    % calculates total mets = met equivalence * total hours
    
    total_mets = current_met .* total_hours;
    
    % keeps adding total mets/h per exercise to an array that will be returned
    % by this function
    total_mets_exercise_all_subjects = [total_mets_exercise_all_subjects; total_mets];


end
