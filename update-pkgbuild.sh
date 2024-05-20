#!/bin/env bash

# This script is used to update the PKGBUILD file with the latest version of Studio 3T

# Usage: ./update-pkgbuild.sh <version>
# For example ./update-pkgbuild.sh 2024.3.0

# Check if the version is provided
if [ -z "$1" ]; then
  echo "Please provide the version number as an argument"
  exit 1
fi

# Get the version number
version=$1

# Download the latest checksum file
checksum_url="https://files.studio3t.com/checksums/linux/x64/SHA256"

# This will be in a format like this:
# 7157860f713d2134bb82c5dd12662fa6722a167720122370f0c563ee1f117791  studio-3t-linux-x64.tar.gz
checksum_file=$(curl -s $checksum_url)

# Extract the checksum
sha256sum=$(echo $checksum_file | cut -d ' ' -f 1)

# Update the PKGBUILD file with the new source and checksum
sed -i "s/pkgver=.*/pkgver=$version/" PKGBUILD

# Update the sha256sums array
sed -i "s/sha256sums=('.*')/sha256sums=('$sha256sum')/" PKGBUILD

echo "PKGBUILD updated with version $version"


