#!/bin/bash

# Create build directory if it doesn't exist
mkdir -p build
mkdir -p build/assets

# Copy CSS files from manual to build
cp manual/*.css build/
cp manual/assets/* build/assets/

# Convert manual/index.md to HTML using pandoc with custom template
pandoc manual/index.md -o build/index.html --template=manual/template.html

echo "Build complete! HTML file created at build/index.html"
