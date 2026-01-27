#!/bin/bash

Start_time=$(date +%s)

sleep 10

end_time=$(date +%s)
 total=$((end_time-Start_time))
echo "$total"