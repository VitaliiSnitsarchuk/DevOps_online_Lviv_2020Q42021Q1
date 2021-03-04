#!/bin/bash

echo "the most requests from ip:"
awk '{print $1}' example_log.log | sort | uniq -c | sort -nr | head -n 1


echo "the most requested page:"
awk '{print $7}' example_log.log | sort | uniq -c | sort -nr | head -n 1


echo "Amount requests from ip:"
awk '{print $2"requests: from "$1}' example_log.log | sort | uniq -c | sort -nr | head -n 15


echo "Non-existent pages were clients referred to:"
grep -w '404' /home/vitalii/task_7.1/example_log.log | cut -d' ' -f 1,7-9 | sort -n | uniq -c


echo "The site with ip 94.78.95.154 has the most requests at:"
grep "94.78.95.154" /home/vitalii/task_7.1/example_log.log | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $1" "$2":00"}' | sort -n | uniq -c


echo "The search bots accessed to the site:"
awk -F: '{print $1 $5}' /home/vitalii/task_7.1/example_log.log | grep -P "bot" | sort -n | uniq -c
