#!/bin/bash

echo "🚀 CloudComparer 本地启动"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

cd "$(dirname "$0")"

# 设置 Docker 路径
DOCKER_CMD="docker"
if [ ! -x "$(command -v docker)" ]; then
    if [ -f "/Applications/Docker.app/Contents/Resources/bin/docker" ]; then
        DOCKER_CMD="/Applications/Docker.app/Contents/Resources/bin/docker"
    fi
fi

# 方案1: 尝试使用 Docker
if $DOCKER_CMD info > /dev/null 2>&1; then
    echo "✅ 使用 Docker 启动（推荐）"
    echo ""
    
    # 清理旧容器
    $DOCKER_CMD stop cloudcomparer 2>/dev/null
    $DOCKER_CMD rm cloudcomparer 2>/dev/null
    
    echo "📦 启动 Jekyll 容器..."
    echo "⏳ 首次运行需要下载镜像，请等待..."
    echo ""
    
    $DOCKER_CMD run --rm -d \
      --name cloudcomparer \
      -p 4000:4000 \
      -v "$PWD:/srv/jekyll" \
      jekyll/jekyll:4.2.0 \
      jekyll serve --watch --force_polling --host 0.0.0.0
    
    echo "⏳ 等待服务器启动..."
    sleep 10
    
    # 检查是否启动成功
    if curl -s http://localhost:4000 > /dev/null; then
        echo ""
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "✅ 启动成功！"
        echo ""
        echo "📍 访问地址: http://localhost:4000"
        echo "💡 修改 _data/cloudservices.yml 后刷新浏览器即可"
        echo "🛑 停止服务器: $DOCKER_CMD stop cloudcomparer"
        echo "📋 查看日志: $DOCKER_CMD logs -f cloudcomparer"
        echo ""
        
        # 打开浏览器
        open http://localhost:4000
        
        echo "💡 提示: 服务器在后台运行，可以关闭此终端"
        echo ""
    else
        echo "⚠️  服务器可能还在启动中..."
        echo "💡 请等待 1-2 分钟后访问: http://localhost:4000"
        echo "📋 查看日志: $DOCKER_CMD logs -f cloudcomparer"
    fi
    
    exit 0
fi

# 方案2: 尝试使用 Homebrew Ruby
if [ -f "/opt/homebrew/opt/ruby/bin/ruby" ]; then
    RUBY_PATH="/opt/homebrew/opt/ruby/bin"
elif [ -f "/usr/local/opt/ruby/bin/ruby" ]; then
    RUBY_PATH="/usr/local/opt/ruby/bin"
else
    RUBY_PATH=""
fi

if [ -n "$RUBY_PATH" ]; then
    echo "✅ 使用 Homebrew Ruby 启动"
    echo ""
    
    export PATH="$RUBY_PATH:$PATH"
    export GEM_HOME="$HOME/.gem"
    
    echo "Ruby: $(ruby --version)"
    echo ""
    
    # 安装 bundler
    if ! command -v bundle > /dev/null 2>&1; then
        echo "📦 安装 Bundler..."
        gem install bundler --no-document
    fi
    
    # 清理并安装依赖
    if [ ! -d "vendor/bundle" ]; then
        echo "📦 安装项目依赖（首次需要 5-10 分钟）..."
        rm -rf .bundle Gemfile.lock
        bundle config set --local path 'vendor/bundle'
        bundle install
    fi
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ 启动 Jekyll 服务器..."
    echo ""
    echo "📍 访问地址: http://localhost:4000"
    echo "💡 修改 _data/cloudservices.yml 后刷新浏览器即可"
    echo "🛑 停止服务器: 按 Ctrl+C"
    echo ""
    
    # 打开浏览器
    sleep 2
    open http://localhost:4000 &
    
    # 启动 Jekyll
    bundle exec jekyll serve --host 127.0.0.1 --port 4000 --incremental
    
    exit 0
fi

# 方案3: 都不可用，给出提示
echo "❌ 无法启动"
echo ""
echo "请先安装以下工具之一："
echo ""
echo "方案1: 安装 Docker（推荐）"
echo "  brew install --cask docker"
echo "  然后启动 Docker Desktop，重新运行此脚本"
echo ""
echo "方案2: 安装 Ruby 3.x"
echo "  brew install ruby"
echo "  重新运行此脚本"
echo ""
