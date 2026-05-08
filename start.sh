#!/bin/bash

echo "Starting Paper 1.12.2..."
java -Xms512M -Xmx512M -jar paper.jar nogui &

echo "Starting EaglerX WebSocket bridge..."
node bridge.js
