#!/bin/bash

check_health() {
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
    sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
    awk '{print 100 - $1}')
  memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
  disk_usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

  if [[ $(echo "$cpu_usage < 60" | bc) -eq 1 && \
        $(echo "$memory_usage < 60" | bc) -eq 1 && \
        $(echo "$disk_usage < 60" | bc) -eq 1 ]]; then
    health_status="healthy"
  else
    health_status="not healthy"
  fi

  if [[ "$1" == "explain" ]]; then
    echo "Health Status: $health_status"
    echo "CPU Usage: $cpu_usage%"
    echo "Memory Usage: $memory_usage%"
    echo "Disk Usage: $disk_usage%"
  else
    echo "Health Status: $health_status"
  fi
}

check_health $1
