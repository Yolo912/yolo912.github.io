#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e


# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist


# git commit
git init
git add -A
git commit -m "deploy"

# deploy to github
git push -f git@github.com:Yolo912/yolo912.github.io.git master:gh-pages # 推送到github

# 退回开始所在目录
cd -
# 删除 dist
rm -rf docs/.vuepress/dist