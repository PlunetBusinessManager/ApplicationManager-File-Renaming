# ApplicationManager-File-Renaming
## Description
Simple Batch File Renaming Script for the Plunet BusinessManager ApplicationManager

## Setup
- Put the file into a folder that is accessible by the Plunet Application
- Create a new Job Type and configure the settings:
![Job Settings](https://github.com/PlunetBusinessManager/ApplicationManager-File-Renaming/blob/main/job_settings.png)

## Functionality
- All files of the !_In folder of the preceeding job are moved into the !_OUT of the automatic job (via job settings).
- All PDF files of the !_Out in the Automatic Job are copied and renamed to docx.
- A Result.txt is created at the end of the program run, which is the trigger for the delivery.

## LICENSE
Distributed under the MIT License. See LICENSE for more information.
