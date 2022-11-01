:loop
	
	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\sajid\Desktop\automatic_push_code_to_github\test2
	cd C:\Users\sajid\Desktop\automatic_push_code_to_github\test2
	
	echo "push starting..."
	::Initialize GitHub
	git init
	
	::Pull any external changes (maybe you deleted a file from your repo?)
	git pull origin master
	
	::Add all files in the directory
	git add .
	
	::Commit all changes with the message "auto push". 
	::Change as needed.
	git commit -m "auto pushed"
	
	::Add origin 
	git remote add origin https://github.com/dontKnew/testing.git

	::Push all changes to GitHub 
	git push origin master
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 300 seconds until going to the start of the loop.
	::Change as needed.
	TIMEOUT 300
	
::Restart from the top.	
goto loop
