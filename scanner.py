import sys,os
import shodan

if len(sys.argv)!=3:
	print('Wrong Usage')
elif sys.argv[1].lower()=='scan':
	f=open(sys.argv[2],'r').readlines()
	for i in range(len(f)):
		print('Scanning '+str(i+1)+' out of '+str(len(f))+' IPs')
		os.system('nmap -sS '+f[i]+' >>nmap-results.txt')
