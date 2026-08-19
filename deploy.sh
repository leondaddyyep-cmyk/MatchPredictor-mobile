#!/bin/bash
# MatchPredictor 手机版自动部署脚本
# 用法：./deploy.sh "修改说明"

cd /Users/leon/Desktop/赛事预测手机版

# 1. 提交到GitHub
git add .
git commit -m "${1:-update}"
git push origin master

# 2. 部署到Netlify
netlify deploy --prod --dir=.

echo "✅ 部署完成！访问：https://matchpredictor666.netlify.app"
