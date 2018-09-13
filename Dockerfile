FROM ubuntu:18.04

RUN apt update && apt install -y curl cron wget && curl -sSL https://get.docker.com/ | sh

RUN wget -c https://github.com/eoscanada/pitreos/releases/download/v1.0.0/pitreos_1.0.0_linux_x86_64.tar.gz \
    && tar -xvzf pitreos_1.0.0_linux_x86_64.tar.gz -C /usr/local/bin/

ADD crontab /etc/cron.d/backup-cron
ADD cronjob.sh /cronjob.sh
ADD entrypoint.sh /entrypoint.sh 

RUN chmod 0644 /etc/cron.d/backup-cron && chmod +x /cronjob.sh && chmod +x /entrypoint.sh

RUN crontab /etc/cron.d/backup-cron


ENTRYPOINT ["/entrypoint.sh"]
