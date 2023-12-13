

% function that takes time variables and met values and returns total_mets

function [total_mets] = total_mets_funct(met_value, months_y, days_w, ...
    ...
    hours_d, mins_d, total_years_jobs)

    
    % total hours: adds each element of the arrays hours_d and mins_d transformed into hours
    transformed_hours_day = hours_d + mins_d/60;

    % with array multiplication, calculates totals for time variables
    total_months = total_years_jobs .* months_y;

    total_days = (total_months .* days_w)*4; % 4 weeks each month
    
    total_hours= transformed_hours_day .* total_days;


    % calculates total mets = met equivalence * total hours

    total_mets = met_value .* total_hours;