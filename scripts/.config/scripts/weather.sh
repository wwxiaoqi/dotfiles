#!/bin/bash
curl -s "wttr.in/guandong?format=3" | awk -F[:] '{print $2}' | awk '{print $2}' | awk '{print $1}'
