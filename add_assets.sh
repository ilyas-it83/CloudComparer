#!/bin/bash

cd /Users/daodaoli/Downloads/cloudmapper/cloudcomparer/CloudComparer

echo "Adding all asset files..."
git add -f assets/

echo "Checking status..."
git status

echo "Committing..."
git commit -m "chore: Add all asset files including Tencent Cloud images"

echo "Pushing..."
git push origin add-tencent-cloud-lighthouse

echo "Done!"
