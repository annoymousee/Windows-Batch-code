@ECHO OFF
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST files echo File deleted
:CONFIRM
 echo Are you sure to lock this folder? (Y/N)
 set/p "cho=>"
  if %cho%==Y goto LOCK
  if %cho%==y goto LOCK
  if %cho%==n goto END
  if %cho%==N goto END 
 echo Invalid choice.
 goto CONFIRM
:LOCK
 if EXIST "Private" (ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002C30309D}"
 attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002C30309D}")
 echo here
 ren THE_FILE_YOU_WANT_TO_ADD "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
 echo Folder locked
 goto End
:UNLOCK
 set/p "pass=>"
 if %pass%== 456 goto phase 2
 if NOT %pass%== 123 goto FAIL
 attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" THE_FILE_YOU_WANT_TO_ADD
 ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" 
 echo Folder Unlocked successfully
 goto End
:FAIL
 echo Invalid password try again
 goto UNLOCK
:phase 2
 attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002C30309D}"
 ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002C30309D}" Private
 echo Folder Unlocked successfully
 goto UNLOCK
:End
