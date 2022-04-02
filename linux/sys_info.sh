 sys_info.sh                                                                                              

echo $MACHTYPE >> ~/research_output/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research_output/sys_info.txt

echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> ~/research_output/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
echo -e "IP Info: $ip \n" >> $output

echo -e "Hostname: $(hostname -s) \n" >> ~/research_output/sys_info.txt
echo "DNS Servers: " >> ~/research_output/sys_info.txt
cat /etc/reslv.conf >> ~/research_output/sys_info.txt
echo "Memory Info" >> ~/research_output/sys_info.txt
free >> ~/research_output/sys_info.txt
echo "==========================================" >> ~/research_output/sys_info.txt
echo -e "\nCPU Info:" >> ~/research_output/sys_info.txt
lscpu | grep CPU >> ~/research_output/sys_info.txt
echo -e "\nDisk Usage:" >> ~/research_output/sys_info.txt
df -H | head -2 >> ~/research_output/sys_info.txt
echo -e "\nWho is logged in: \n $(who) \n" >> ~/research_output/sys_info.txt

echo -e "\nExec Files:" >> ~/research_output/sys_info.txt
executables=$(find /home -type f -perm 777)
echo $executables >> $outputs

echo-e "\Top 10 Processes" >> ~/research_output/sys_info.txt
ps aux -m | awk {'print $!, $2, $3, $4, $1'} | head >> ~/research_output/sys_info.txt