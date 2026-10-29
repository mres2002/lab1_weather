#!/bin/bash
CRON_JOB="* * * * * $(pwd)/weather.sh Perm >> /var/log/weather_cron.log 2>&1"

crontab -l

echo "Adding cron job: $CRON_JOB"

(crontab -l 2>/dev/null | grep -v "weather.sh"; echo "$CRON_JOB") | crontab -

crontab -l

