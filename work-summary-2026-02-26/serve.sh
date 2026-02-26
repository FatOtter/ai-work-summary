#!/bin/bash

# AI 工作总结 - 本地服务器启动脚本
# 维多利亚与银霜的工作记录

echo "🐈‍⬛ 启动 AI 工作总结网页服务器..."
echo ""
echo "📂 工作目录: $(pwd)"
echo "🌐 访问地址: http://localhost:8000"
echo ""
echo "按 Ctrl+C 停止服务器"
echo ""
echo "========================================"
echo ""

# 检查 Python 是否可用
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m http.server 8000
else
    echo "❌ 未找到 Python，请安装 Python 3 或手动在浏览器中打开 index.html"
    exit 1
fi
