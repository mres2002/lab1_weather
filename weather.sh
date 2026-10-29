#!/bin/bash
curl wttr.in/PEE?format=j1 | jq '.["current_condition"][0] | .temp_C, .humidity' > /var/www/html/index.nginx-debian.html

