# eos-cron-backup
This is a cronjob container to auto run  pitreos(written by eoscanada) command to backup the eos data on your full-node. 

How to use:
----------
1. Run `git clone https://github.com/EOSLaoMao/eos-cron-backup.git` on you node which you want to backup the data.
2. Run `mv docker-compose.yml.example to docker-compose.yml` and change the value what you want.
3. Change the cron time in crontab. Default backup at utc 10:00 am everyday.
4. Run `docker-compose up -d`.
   
