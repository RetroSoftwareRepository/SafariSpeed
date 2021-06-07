-- SafariSpeed 1.2.1
-- (C) Copyright 2003-2004 ScifienceStudios.
-- Released under a GPL license.  You should have received a copy of the GPL with
-- this application.  If you did not, you can download one from http:--www.gnu.org/.

-- This release is dedicated to my parents, who bought me my first computer and have provided
-- me with so much support - both financial and emotional - for all of my projects over the years.

on clicked theObject
	
	-- Check to see if user requested to remove page loading delay.
	
	if the name of theObject is equal to "speedMeUp" then
		
		-- Display a dialog box instructing the user to make sure that Safari is not running.
		display dialog "Please make sure that Safari is not running before continuing." with icon 0
		
		-- "Remove" the page loading delay by setting it to a very small value.
		do shell script "defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.000001"
		
		-- Display a dialog telling the user that the changes were successful.
		display dialog "The page loading delay was successfully disabled." buttons {"OK"} default button "OK" with icon 1
		
		-- Check to see if the user requested to re-instate the page loading delay.
		
	else if the name of theObject is equal to "reverseChanges" then
		
		-- Display a dialog box instructing the user to make sure that Safari is not running.
		display dialog "Please make sure that Safari is not running before continuing." with icon 0
		
		-- Re-instate the page loading delay's default value of 1.00.
		do shell script "defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 1.00"
		
		-- Display a dialog telling the user that the changes were successful.
		display dialog "The page loading delay was successfully re-instated." buttons {"OK"} default button "OK" with icon 1
		-- Check to see if the user requested to disable favorite icons.
		
	else if the name of theObject is equal to "favIcon" then
		
		-- Warn the user about having Safari running with a dialog box.
		display dialog "Please make sure that Safari is not running before continuing." with icon 0
		
		-- Warn the user that the process may take some time to complete depending on the number
		-- of favorite icons stored on the system.
		display dialog "Please note that this procedure may take some time depending on the number of favorite icons stored on your computer.  Please be patient!" buttons {"OK"} default button "OK" with icon 1
		
		-- Delete all icons from the icons folder.
		do shell script "rm -r -f ~/Library/Safari/Icons"
		
		-- Make a symbolic link between ~/Library/Safari/Icons and /dev/null, preventing Safari from storing
		-- any new icons.
		do shell script "ln -s /dev/null ~/Library/Safari/Icons"
		
		-- Display a dialog telling the user that the changes were successful.
		display dialog "Favorite icons were successfully purged and disabled." buttons {"OK"} default button "OK" with icon 1
		
		-- Check to see if the user requested to re-enable favorite icons.
		
	else if the name of theObject is equal to "reverseFavIcon" then
		
		-- Warn the user about having Safari running with a dialog box.
		display dialog "Please make sure that Safari is not running before continuing." with icon 0
		
		-- Remove the symbolic link between ~/Library/Safari/Icons and /dev/null.
		do shell script "rm ~/Library/Safari/Icons"
		
		-- Create a real directory for the icons to be stored in again.
		do shell script "mkdir ~/Library/Safari/Icons"
		
		-- Display a dialog telling the user that the changes were successful.
		display dialog "Favorite icons were successfully re-enabled." buttons {"OK"} default button "OK" with icon 1
		
	end if
	
end clicked

on awake from nib theObject
	(*Add your script here.*)
end awake from nib

on should quit after last window closed theObject
	(*Add your script here.*)
end should quit after last window closed
