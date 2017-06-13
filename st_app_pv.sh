#!/bin/bash
/home/tomcat/cdh4/hive-0.10.0-cdh4.2.0/bin/hive -f  /home/tomcat/shell/st_app_pv.sql
/usr/local/python36/bin/python3.6 /home/tomcat/shell/st_app_pv.py
/home/tomcat/cdh4/sqoop-1.4.2-cdh4.2.0/bin/sqoop --options-file /home/tomcat/shell/st_app_pv.sqopt

#!/bin/bash
source /home/tomcat/.bashrc
source /home/tomcat/.bash_profile
date >> /home/tomcat/shell/st_app_pv_log.txt
echo "hive starts"  >> /home/tomcat/shell/st_app_pv_log.txt
/home/tomcat/cdh4/hive-0.10.0-cdh4.2.0/bin/hive -f  /home/tomcat/shell/st_app_pv.sql >> /home/tomcat/shell/st_app_pv_log.txt
echo "hive ends"  >> /home/tomcat/shell/st_app_pv_log.txt
echo "python starts"  >> /home/tomcat/shell/st_app_pv_log.txt
/usr/local/python36/bin/python3.6 /home/tomcat/shell/st_app_pv.py  >> /home/tomcat/shell/st_app_pv_log.txt
echo "python ends"  >> /home/tomcat/shell/st_app_pv_log.txt
echo "sqoop starts"  >> /home/tomcat/shell/st_app_pv_log.txt
/home/tomcat/cdh4/sqoop-1.4.2-cdh4.2.0/bin/sqoop --options-file /home/tomcat/shell/st_app_pv.sqopt  >> /home/tomcat/shell/st_app_pv_log.txt
echo "sqoop ends"  >> /home/tomcat/shell/st_app_pv_log.txt
echo "python proc_main.py"
/usr/local/python36/bin/python3.6 /home/tomcat/shell/proc_main.py
echo "shell end."
