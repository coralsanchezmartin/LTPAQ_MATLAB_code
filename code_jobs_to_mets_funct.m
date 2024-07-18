    
% function that gets code jobs from a table and transforms them into the 
% corresponding met values

function [met_values] = code_jobs_to_mets_funct(t, Job_list)

    first_code_job = t{1, 8:39:end}; % gets all firt job codes
    second_code_job = t{1, 9:39:end}; % gets all second job codes
    third_code_job = t{1, 10:39:end}; % gets all third job codes
    all_code_jobs = [first_code_job(:), second_code_job(:), third_code_job(:)]; % adds all job codes into an array

    % fills NaN values in the all_code_jobs array with the constant value 0.
    code_jobs_access = fillmissing(all_code_jobs,'constant',0);
    

    met_values = []; % start empty array, that will store met equivalence values for all jobs


    for k = 1:height(code_jobs_access) % iterates on each row of code_job_access array
        current_met = []; % start empty array, that will store met corresponding values for each job
        for z = code_jobs_access(k,:) % iterates on each column of k (each code job value)
            if (z == 0) % if z value is 0
                continue % it continues to the next iteration
            end

            met_index = find(Job_list.Code_JOB == z,1,"first"); % find the
            % first time this relational operation is true (look for z in
            % job_list.Code_JOB table and store that index in a new variable.

            met_val = Job_list.METLevel(met_index); % Gets value met_index
            % extracted from table (Job_list) variable named METLevel2011

            current_met = [current_met met_val]; % saves each corresponding met value

        end
        if isempty(current_met) % avoid errors:checks if current_met is empty
            met_values = [met_values,0]; % if so, it adds a 0 to the met_value_array
        else
            met_values = [met_values,mean(current_met)]; % if not, it calculates the
            % mean of all met values and adds them to the met_value array
        end


    end