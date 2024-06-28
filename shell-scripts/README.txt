To create a cron job and schedule any shell script in a Linux environment we can follow the below steps.

1. Use the command crontab -e to open the crontab and add the cronjob
2. Once the file is open add the cron job
  eg: * * * * * sh /path/to/file.sh -> This will run every minute
3. save the file. The cronjob is set.
