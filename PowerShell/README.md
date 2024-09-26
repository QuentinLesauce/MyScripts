# File Renaming Script by Last Modified Date

This PowerShell script renames all files in the folder where it is executed based on their last modified date. The new file names follow the format: `YYYYMMDD_HHMMSS_X.ext`, where `X` is a number that increments if files with the same timestamp exist to avoid overwriting.

## Features

- **Format:** Files are renamed to `YYYYMMDD_HHMMSS_1.ext`.
- **Incremental Naming:** If a file with the same name already exists, the script appends an incrementing number (e.g., `_2`, `_3`, etc.).
- **Automatic Execution:** The script automatically renames all files in the folder, excluding itself.

## Prerequisites

- **Operating System:** Windows
- **PowerShell Version:** This script requires PowerShell 3.0 or higher, which comes pre-installed on most modern Windows systems.

## How to Use

### Step 1: Download the Script

1. Create a new file and name it `rename_files_by_date.ps1`.
2. Copy the script code and paste it into the `rename_files_by_date.ps1` file.

### Step 2: Run the Script

1. **Open PowerShell:**
   - Press `Windows + R`, type `powershell`, and press `Enter`.
   
2. **Navigate to the Folder:**
   - Use the `cd` command to navigate to the folder containing `rename_files_by_date.ps1` and the files you want to rename. For example:
     ```powershell
     cd "C:\Users\YourUsername\Documents\FolderToRename"
     ```

3. **Run the Script:**
   - Execute the script by typing:
     ```powershell
     .\rename_files_by_date.ps1
     ```
   
4. The script will rename all the files in the current directory according to their last modified date, except the script itself. If files with the same timestamp exist, numbers will be appended to make the names unique (e.g., `20230922_134512_1.jpg`, `20230922_134512_2.jpg`).

### Step 3: Verify the Output

Once the script finishes, all files in the folder should be renamed according to their last modified date in the format `YYYYMMDD_HHMMSS_X.ext`.

## Example

For a folder containing the following files:

`photo.jpg` *(last modified: 2023-09-22 13:45:12)* `document.txt` *(last modified: 2023-09-22 13:45:12)*

After running the script, the folder will look like:

`20230922_134512_1.jpg` `20230922_134512_2.txt` `rename_files_by_date.ps1`


## Notes

- **Do not rename the script file (`rename_files_by_date.ps1`)**. The script is designed to skip renaming itself.
- This script does **not** modify subfolders or files in subdirectories.

## Troubleshooting

If you encounter any issues or errors:

- Make sure the folder path is correct.
- Ensure that no files are open or being used by other programs while renaming.
- If you receive an error about permissions, try running PowerShell as Administrator.

## License

This script is free to use, modify, and distribute. No warranty is provided. Use at your own risk.
