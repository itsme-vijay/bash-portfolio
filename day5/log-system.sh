#!/bin/bash



# Create a timestamp
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# Start the log entry
echo "=============================" >> /home/ubuntu/bash-portfolio/day5/system-health.log
echo "$timestamp" >> /home/ubuntu/bash-portfolio/day5/system-health.log
echo "=============================" >> /home/ubuntu/bash-portfolio/day5/system-health.log

# CPU usage
echo "" >> /home/ubuntu/bash-portfolio/day5/system-health.log
echo "CPU Usage:" >> /home/ubuntu/bash-portfolio/day5/system-health.log
top -bn1 | grep "Cpu(s)" >> /home/ubuntu/bash-portfolio/day5/system-health.log

# RAM usage
echo "" >> /home/ubuntu/bash-portfolio/day5/system-health.log
echo "RAM Usage:" >> /home/ubuntu/bash-portfolio/day5/system-health.log
free -m >> /home/ubuntu/bash-portfolio/day5/system-health.log


# Disk usage
echo "" >> /home/ubuntu/bash-portfolio/day5/system-health.log
echo "🗃️ Disk Usage:" >> /home/ubuntu/bash-portfolio/day5/system-health.log
df -h >> /home/ubuntu/bash-portfolio/day5/system-health.log

# Done
echo "Log saved to system-health.log" >> /home/ubuntu/bash-portfolio/day5/system-health.log
