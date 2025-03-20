#!/bin/bash

# Clean any previous build
rm -rf build
rm -rf .next

# Install dependencies
bun install

# Build the project
bun run next build

# Create the build directory
mkdir -p build

# Copy the built files to the build directory
cp -r .next/* build/

# Copy the public directory to build/static
cp -r public/* build/static/

echo "Build completed successfully!"
