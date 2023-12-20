# LTPAQ_MATLAB_code
We developed open-source MATLAB code to simplify data handling  when using the Lifetime Total Physical Activity Questionnaire (LTPAQ). 


## Motivation
The LTPAQ is an interviewer-administered recall questionnaire used to estimate relatively regular physical activity performed from childhood to the present across all domains (occupational, household, recreational, and commuting) and parameters of PA (frequency, duration, and intensity). Nevertheless, concerning its analysis, the authors describe a specific code that lacks comprehensiveness, hindering its implementation by other researchers or health professionals with limited programming or software expertise. For this purpose, we aimed to develop open-source MATLAB code to simplify data handling and enhance comparability between studies using the LTPAQ. This code automates data processing, ensuring efficiency and facilitating adaptability. Moreover, it interacts seamlessly with Excel sheets, providing a user-friendly interface for data input, storage, and organisation.


## Languages and Tools
<p align="left"> <a href="https://www.mathworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> </a> <a href="https://www.microsoft.com/es/microsoft-365/excel" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg" alt="excel" width="40" height="40"/> </a> </p>


## Installation
Brief instructions on how to install and set up the project.

1. Clone the repository to your local machine:

```bash

git clone https://github.com/micoralita/LTPAQ_MATLAB_code.git

```
2. Open MATLAB and navigate to the cloned directory.

3. Run the main script:

```matlab

run LTPAQ_main_script.m

```
This will initiate the LTPAQ tool.


Explore the functionality of the LTPAQ tool by running the sample data. Utilize the provided test data to demonstrate the tool's capabilities and showcase the output.


## Usage
To effectively use this LTPAQ analysis tool, follow the steps outlined below.

### Transcript Data Handling:

To initialize the LTPAQ tool with your questionnaire transcript data, follow these steps:

1. Locate the designated Excel spreadsheet: DB_LTPAQ.xlsx in the project directory.

2. Input your questionnaire transcript data into this spreadsheet. The file already includes three subjects with sample data as an illustrative example.

Note: The headers in DB_LTPAQ.xlsx are locked with the password "ltpaq" to maintain a consistent structure. It is crucial to ensure that your data adheres to this predefined structure for seamless processing.

3. Make sure to replace the sample data with your own, maintaining the structure and format outlined in the locked headers.

By adhering to these instructions, you ensure that the LTPAQ tool processes your data accurately and efficiently.





Special Consideration for "Other Transportation" Option:
When the option "Other Transportation" is selected in the questionnaire, a manual entry is required for the corresponding METs value.
Locate the relevant cell in the database spreadsheet (db_ltpaq.xlsx) designated for manual entry and input the corresponding METs value.

### Importing MET Equivalences Data:
MET equivalences data is required for the analysis. Import the corresponding information into two separate Excel files: job_list.xlsx and exercise_list.xlsx.
The given list is just an example. Customize the MET equivalences data according to your study's needs and the specific activities covered in your questionnaire.

### Running the LTPAQ Tool:
Open MATLAB and navigate to the directory where the LTPAQ code is stored.

Run the main script:

matlab
Copy code
run LTPAQ_main_script.m
Interacting with the Tool:

The tool will prompt you to input the necessary files, including the questionnaire transcript data and MET equivalences data.
Follow the on-screen instructions to complete the analysis.
By following these steps, you ensure that your data is appropriately structured and compatible with the LTPAQ tool. If you encounter any issues or have specific requirements, refer to the code documentation or reach out to the project contributors for assistance.


ddd
