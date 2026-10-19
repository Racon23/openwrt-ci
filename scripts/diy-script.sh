#!/bin/bash

./scripts/feeds update -a
./scripts/feeds install -a

# 24.10 的 golang 工具链(1.23)无法编译要求 go>=1.25 的包(如 ddns-go 6.17.7)
# 用 kenzok8/golang 1.25 分支覆盖 packages feed 自带的 golang
branch="$REPO_BRANCH"
[ -z "$branch" ] && branch="$(git branch --show-current 2>/dev/null)"
if [ "${branch:-openwrt-24.10}" = "openwrt-24.10" ]; then
    rm -rf feeds/packages/lang/golang
    git clone --depth 1 https://github.com/kenzok8/golang -b 1.25 feeds/packages/lang/golang
fi
