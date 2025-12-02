#!/bin/bash

echo "Starting Jekyll build..."
cd /Users/daodaoli/Downloads/cloudmapper/cloudcomparer/CloudComparer

# 清理旧构建
echo "Cleaning old build..."
rm -rf _site/

# 安装依赖
echo "Installing dependencies..."
bundle install

# 构建
echo "Building Jekyll site..."
bundle exec jekyll build

# 检查结果
if [ -d "_site" ]; then
    echo "✅ Build successful!"
    echo "Generated files:"
    ls -lh _site/ | head -20
    echo ""
    echo "Total size:"
    du -sh _site/
else
    echo "❌ Build failed - _site directory not created"
    exit 1
fi
