//%attributes = {}
  // Stress Test
  // Created by Wayne Stewart (2018-08-03T14:00:00Z)
  //  Method is an autostart type
  //     wayne@4dsupport.guru
  // ----------------------------------------------------

C_LONGINT:C283($ProcessID_i;$StackSize_i;$WindowID_i;$i;$Loops_i;$element_i)
C_TEXT:C284($1;$ProcessName_t;$ProcessID_t)

If (False:C215)  //  Copy this to your Compiler Method!
	C_TEXT:C284(STRESS TEST ;$1)
End if 

  // ----------------------------------------------------




If (Is compiled mode:C492)
	$Loops_i:=1000
Else 
	$Loops_i:=10
End if 


$StackSize_i:=0

If (Count parameters:C259=1)
	
	ARRAY TEXT:C222($Logs_at;0)
	
	APPEND TO ARRAY:C911($Logs_at;"Sun")
	APPEND TO ARRAY:C911($Logs_at;"Mon")
	APPEND TO ARRAY:C911($Logs_at;"Tue")
	APPEND TO ARRAY:C911($Logs_at;"Wed")
	APPEND TO ARRAY:C911($Logs_at;"Thu")
	APPEND TO ARRAY:C911($Logs_at;"Fri")
	APPEND TO ARRAY:C911($Logs_at;"Sat")
	
	
	LOG ENABLE (True:C214)
	$ProcessID_i:=Current process:C322
	
	$ProcessName_t:=$1
	$ProcessID_t:=String:C10($ProcessID_i)
	
	For ($i;1;$Loops_i)
		
		$element_i:=Random:C100%7
		
		If ($element_i>=1) & ($element_i<=7)
			LOG USE LOG ($Logs_at{$element_i})
		Else 
			LOG USE LOG 
		End if 
		
		If ($Loops_i%100=0)
			LOG CLOSE LOG 
			
		End if 
		
		LOG ADD ENTRY ($ProcessID_t;String:C10($i);$ProcessName_t)
		
		
		
	End for 
	
	ALERT:C41("Finished")
	
Else 
	  // This version allows for any number of processes
	For ($i;1;99)
		$ProcessName_t:=Current method name:C684+" "+String:C10($i;"000")
		$ProcessID_i:=New process:C317(Current method name:C684;$StackSize_i;$ProcessName_t;$ProcessName_t)
	End for 
	
	  //  // On the other hand, this version allows for one unique process
	  //$ProcessID_i:=New process(Current method name;$StackSize_i;Current method name;0;*)
	
	  //RESUME PROCESS($ProcessID_i)
	  //SHOW PROCESS($ProcessID_i)
	  //BRING TO FRONT($ProcessID_i)
End if 





