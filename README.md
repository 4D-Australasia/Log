# Log
A 4D component for logging

## Commands
**Log_AddEntry** (text1 _{;text2..textN}_)<br>
Call this method to add a new entry to the log file.<br>
Safe to call even if we're not currently logging activity.<br>
_Parameters:_<br>
$1 : Text : Any text<br>
$2..N : Text : Any text(optional)

**Log_CloseLog** _{(Log Label)}_<br>
Pass the log label to save and close that log<br>
If you call this without any parameters all the logs will be closed and saved
_Parameters:_<br>
$1 : Text : The log label (optional)

**Log_DeclareLog** (Label _{; File Name {; Folder Path }}_)<br>
Allows the declaration of a different log, specify the name, and optionally the file name and path to folder.
_Parameters:_ <br>
$1 : Text : Log Label<br>
$2 : text : Log file name<br>
$3 : text : Log file path - optional<br>

**Log_Enable** _({enable})_ --> Boolean <br>
If called without parameters it will return True if a log is being recorded.<br>
_Parameters:_<br>
$1 : Boolean : Turn on logging (optional)<br>
_Returns:_<br>
$0 : Boolean : True if logging<br>

**Log_FileName** _{(Log Name)}_ --> Text<br>
Allows you set the current log file name, it will also return the current log file name<br>
_Parameters:_<br>
$1 : TEXT : The log file name (optional)<br>
_Returns:_ <br>
$0 : TEXT : The log file name<br>

**Log_FolderPath** _{(The folder the log file is saved in)}_ --> Text<br>
This method retrieves the folder the log file is saved in<br>
You can also use this method to set the folder path<br>
_Parameters:_<br>
$1 : Text : Folder Path (optional)<br>
_Returns:_ <br>
$0 : Text : Folder Path<br>

**Log_Reveal**<br>
Reveals the current log file in its folder in the Finder or Explorer

**Log_StopLogWriter**<br>
Call this method to stop the Log Writer worker, the worker will restart automatically if needed.

**Log_UseLog** _{(Log Label)}_<br>
Pass the log label to use, if you call this without a parameter, then the default log will be used<br>
_Parameters:_<br>
$1 : Text : The Log to use or nothing to return to default



