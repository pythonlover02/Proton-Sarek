#!/bin/bash

# Ask for sudo upfront
if [ "$EUID" -ne 0 ]
  then echo "Please run as root with sudo."
  exit
fi

# Get the current directory of the script
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Ask for the Proton directory
read -p "Please enter the Proton directory: " protondir

# Ensure the directory exists
if [ ! -d "$protondir" ]; then
  echo "Error: Proton directory not found!"
  exit 1
fi

# Copy the dxvk files
echo "Copying dxvk 32-bit files..."
cp -r "$SCRIPT_DIR/dxvk/x32/"* "$protondir/files/lib/wine/dxvk/" || { echo "Failed to copy 32-bit dxvk files."; exit 1; }

echo "Copying dxvk 64-bit files..."
cp -r "$SCRIPT_DIR/dxvk/x64/"* "$protondir/files/lib64/wine/dxvk/" || { echo "Failed to copy 64-bit dxvk files."; exit 1; }

# Copy the vkd3d-proton-2.6 files
echo "Copying vkd3d-proton-2.6 32-bit files..."
cp -r "$SCRIPT_DIR/vkd3d-proton-2.6/x86/"* "$protondir/files/lib/wine/vkd3d-proton/" || { echo "Failed to copy 32-bit vkd3d-proton files."; exit 1; }

echo "Copying vkd3d-proton-2.6 64-bit files..."
cp -r "$SCRIPT_DIR/vkd3d-proton-2.6/x64/"* "$protondir/files/lib64/wine/vkd3d-proton/" || { echo "Failed to copy 64-bit vkd3d-proton files."; exit 1; }

# Create the nine directories if they don't exist
echo "Creating gallium-nine directories..."
mkdir -p "$protondir/files/lib/wine/nine" || { echo "Failed to create 32-bit nine directory."; exit 1; }

mkdir -p "$protondir/files/lib64/wine/nine" || { echo "Failed to create 64-bit nine directory."; exit 1; }

# Copy the gallium-nine files
echo "Copying gallium-nine 32-bit files..."
cp -r "$SCRIPT_DIR/gallium-nine/x32/"* "$protondir/files/lib/wine/nine/" || { echo "Failed to copy 32-bit gallium-nine files."; exit 1; }

echo "Copying gallium-nine 64-bit files..."
cp -r "$SCRIPT_DIR/gallium-nine/x64/"* "$protondir/files/lib64/wine/nine/" || { echo "Failed to copy 64-bit gallium-nine files."; exit 1; }

# Copy the Proton, Version and compatibilitytool files
echo "Copying proton file..."
cp "$SCRIPT_DIR/proton" "$protondir/" || { echo "Failed to copy proton file."; exit 1; }

echo "Copying version file..."
cp "$SCRIPT_DIR/version" "$protondir/" || { echo "Failed to copy proton file."; exit 1; }

echo "Copying compatibilitytool.vdf..."
cp "$SCRIPT_DIR/compatibilitytool.vdf" "$protondir/" || { echo "Failed to copy compatibilitytool.vdf."; exit 1; }

echo "All files copied successfully."
