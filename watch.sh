#!/bin/bash

echo "Watching manual/ folder for changes..."
echo "Press Ctrl+C to stop"
echo ""

# Watch all files in manual/ directory and rebuild on changes
find manual -type f | entr -c ./build.sh
