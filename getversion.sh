#!/bin/bash

# 获取最新的标签版本号
VERSION=$(git describe --tags --abbrev=0)
# 获取当前提交的 Git 版本号
GIT_VERSION=$(git rev-parse --short HEAD)

# 生成带有 Git 版本号的版本信息
FINAL_VERSION="$VERSION - $GIT_VERSION"

# 写入 version.tex 文件
echo "\\newcommand{\\documentversion}{$FINAL_VERSION}" > version.tex