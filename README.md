# LTPAQ_MATLAB_code
We developed open-source MATLAB code to simplify data handling  when using the Lifetime Total Physical Activity Questionnaire (LTPAQ).

## Table of Contents

- [LTPAQ_MATLAB_code](#ltpaq_matlab_code)
  - [Motivation](#motivation)
  - [Languages and Tools](#languages-and-tools)
  - [Previous requirements](#previous-requirements)
  - [Installation](#installation)
  - [Usage](#usage)
    - [Transcript Data Handling](#transcript-data-handling)
    - [Importing MET Equivalences Data](#importing-met-equivalences-data)
    - [Running the LTPAQ Tool](#running-the-ltpaq-tool)

## Motivation
The LTPAQ is an interviewer-administered recall questionnaire used to estimate relatively regular physical activity performed from childhood to the present across all domains (occupational, household, recreational, and commuting) and parameters of PA (frequency, duration, and intensity). However, when scoring this questionnaire, a notable limitation arises regarding the complexity of analysis and the challenges in administering the extensive information it reports. Therefore, our goal is to offer open-source MATLAB code that simplifies data handling, enhances comparability between studies and provides an efficient, adaptable solution. The code seamlessly interacts with Excel sheets, offering a user-friendly interface for data input, storage, and organization.


## Languages and Tools

<p align="left">
<a href="https://www.mathworks.com/" target="_blank" rel="noreferrer">
   <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> 
</a>
&nbsp; &nbsp;

<a href="https://www.microsoft.com/es/microsoft-365/excel" target="_blank" rel="noreferrer"> 
   <img src="https://upload.wikimedia.org/wikipedia/commons/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg" alt="excel" width="40" height="40"/> 
</a>
&nbsp; &nbsp;

<a href="https://git-scm.com/" target="_blank" rel="noreferrer"> 
   <img src="https://upload.wikimedia.org/wikipedia/commons/e/e0/Git-logo.svg" alt="git" width="60" height="40"/> 
</a>
</p>
  
## Previous requirements
Ensure the following prerequisites are met before proceeding:

1. Install [Git (tutorials for Mac, Windows, and Linux users).](https://gist.github.com/derhuerst/1b15ff4652a867391f03)

2. Have a terminal emulator installed. For Mac users, the "Terminal" application should be pre-installed by default. Windows users will have either "Windows PowerShell" or "Command Prompt" available.

3. Install [Matlab.](https://www.mathworks.com/)

Once you have met these requirements, you are ready to start. The first step is to clone the git repository.


## Clone the git repository
Brief instructions on how to install and set up the project.

1. Open the terminal emulator on your desktop.

2. Change the directory to the place you’d like the files to be stored. You can do this by entering “cd” in the command line followed by the file path. For example, we can store the files on the desktop by typing "cd desktop". Click enter to submit the command.

```bash

cd desktop

```
Once you submit the command you’ll see something like the image below:

![image](https://github.com/coralsanchezmartin/LTPAQ_MATLAB_code/assets/74832205/c5b79583-4478-49b2-9236-2860d7de2f88)

3. Now that you are in the desired location, clone the repository to your local machine, typing “git clone” followed by the link to the GitHub repository:

```bash

git clone https://github.com/micoralita/LTPAQ_MATLAB_code.git

```

4. Once you submit the command, a folder will appear in the location you specified.

5. Open MATLAB and navigate to the cloned directory.

![Picture1](https://github.com/coralsanchezmartin/LTPAQ_MATLAB_code/assets/74832205/585a10eb-12da-4586-8521-27aeba0b2b85)


6. Run the main script by copying and pasting the following command into the "Command Window":

```matlab

run LTPAQ_main_script.m

```

This will initiate the LTPAQ tool.


Explore the functionality of the LTPAQ tool by running the sample data. Utilize the provided test data to demonstrate the tool's capabilities and showcase the output.


## Usage
To effectively use this LTPAQ analysis tool, follow the steps outlined below.

### Transcript Data Handling:

To initialize the LTPAQ tool with your questionnaire transcript data, follow these steps:

1. Locate the designated Excel spreadsheet: **DB_LTPAQ.xlsx** in the project directory.

2. Input your questionnaire transcript data into this spreadsheet. The file already includes two subjects with sample data as an illustrative example.

   **Note**: The headers in **DB_LTPAQ.xlsx** are locked with the password "ltpaq" to maintain a consistent structure. It is crucial to ensure that your data adheres to this predefined structure for seamless processing.

3. Special consideration for "Other transportation" option:

  * When the option "Other transportation" is selected in the questionnaire, a manual entry is required for the corresponding METs value.
  * Locate the relevant cell in the database spreadsheet (**DB_LTPAQ.xlsx**) designated for manual entry and input the corresponding METs value.

4. Make sure to replace the sample data with your own, maintaining the structure and format outlined in the locked headers.


### Importing METs Equivalences Data:

To conduct accurate analyses, METs equivalences data is crucial. Import the corresponding information into two separate Excel files: **job_list.xlsx** and **exercise_list.xlsx**. The provided lists are merely examples, so customize the METs equivalences data to align with the activities covered in your questionnaire and the specific needs of your study.

### Running the LTPAQ Tool:

To utilize the LTPAQ tool, follow these steps:

1. Open MATLAB and navigate to the directory where the LTPAQ code is stored.

2. Run the main script using the following command:

```matlab

run LTPAQ_main_script.m 
```

This will initiate the LTPAQ tool, allowing you to proceed with the analysis of your questionnaire transcript data. Ensure that you have set up your questionnaire data and METs equivalences data as outlined in the previous sections for optimal results.

### Results:
After running the LTPAQ tool, the results will be saved in an Excel file within the project's **Results** directory. The file will be named with the current date and time to ensure uniqueness and ease of identification. Open the file to view the processed data, which includes lifetime METs and total METs for each category (work life, household, exercise).

By adhering to these instructions, you ensure that the LTPAQ tool processes your data accurately and efficiently.


<!-- Back to Top Button -->
[Back to Top](#LTPAQ_MATLAB_code)

