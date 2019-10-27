#!/bin/bash
selection=
until [ "$selection" = "0"]; do
	clear
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 echo "                   nmap Port Scanner v0.1                   "
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 echo "Made with <3 by 0n1cOn3"
	 echo "Script only for"
	 echo "test purposes "
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
	 echo   "Github: https://github.com/0n1cOn3/ShodanIPScanResulter"
	 echo   "Whatsapp: https://cutt.ly/meaORzg "
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo "Setup Menu:"
	 echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo ""
	 echo "Choose your current Operating System (OS)"
	 echo ""
     echo "1 - Enter the IP Adress"
	 echo "2 - Show IP Scan Result"

	 echo "8 - Update Script"
	 echo "9 - Update Script Core"
	 echo ""
     echo "0 - Exit program"
     echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
     echo -n "Enter Selection:"
     read selection
     echo ""
 case $selection in
 1 )
	 clear 
	 #"Implemention of User Data (Read & write the user data to a file and read the file with nmap)"
	 echo "Hello, Please write down your IP"
	 echo "which you wanna scan with nmap"
	 echo "As example 192.168.1.1"
	 echo ""
	 echo -n "Enter IP Adress:"
	 read $IP
	 echo ""
	 sleep 2
	 clear
	 echo "Start nmap scan"
	 nmap -sS $IP >> nmap-results.txt
	 read -p " Press any Key ... ";;
	 2 )
		 clear
		 echo "Open nmap Results"
		 nano nmap-results.txt
		 read -p " Press any Key ... ";;
			8 ) 
			clear
			echo "nmap Port Scanner v0.1"
			echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
			echo "Update nmap Port Scanner"
			echo "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
			sleep 2
			python3 update.py
			exit;;				
				9 ) 
				chmod +x update-engine.sh
			    ./update-engine.sh
				exit;;
				  0 ) exit;;
         * ) echo "Please enter 1,2,7,8 or 0 for exit"
     esac
done