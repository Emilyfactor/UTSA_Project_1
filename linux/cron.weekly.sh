/etc/cron.weekly/system.sh                                                  

#!/bin/bash

# Print how much free memory your machine has left. Save the file to a file called '~/backups/freemem/free_mem.txt' 
free -h > ~/backups/freemem/free_mem.txt

# Print disk usage of you machine and save it to file '~/backups/diskuse/disk_usage.txt'
du -h > ~/backups/diskuse/disk_usage.txt

# List all open files in '~/backups/openlist' and save this output to file called '~/backups/openlist/open_list.txt'
ls -l ~/backups/openlist > ~/backups/openlist/open_list.txt

# Print file system disk space statistic and save it to file '~/backups/freedisk/free_disk.txt'
df -h > ~/backups/freedisk/free_disk.txt