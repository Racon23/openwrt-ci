#!/bin/bash

./scripts/feeds update -a
./scripts/feeds install -a

# 24.10 的 golang 工具链(1.23)无法编译要求 go>=1.25 的包(如 ddns-go 6.17.7)
# 用 kenzok8/golang 1.25 分支覆盖 packages feed 自带的 golang
# branch="$REPO_BRANCH"
# [ -z "$branch" ] && branch="$(git branch --show-current 2>/dev/null)"
# if [ "${branch:-openwrt-24.10}" = "openwrt-24.10" ]; then
#     rm -rf feeds/packages/lang/golang
#     git clone --depth 1 https://github.com/kenzok8/golang -b 1.25 feeds/packages/lang/golang
# fi

# IPQ60XX-25.12-NOWIFI：关闭 wifi 驱动相关包
sed -i 's/^CONFIG_PACKAGE_kmod-ath11k=.*/CONFIG_PACKAGE_kmod-ath11k=n/' .config
sed -i 's/^CONFIG_PACKAGE_kmod-ath11k-ahb=.*/CONFIG_PACKAGE_kmod-ath11k-ahb=n/' .config
sed -i 's/^CONFIG_PACKAGE_kmod-ath11k-pci=.*/CONFIG_PACKAGE_kmod-ath11k-pci=n/' .config
sed -i 's/^CONFIG_PACKAGE_ath11k-firmware-ipq6018=.*/CONFIG_PACKAGE_ath11k-firmware-ipq6018=n/' .config
sed -i 's/^CONFIG_PACKAGE_ath11k-firmware-ipq6018-ddwrt=.*/CONFIG_PACKAGE_ath11k-firmware-ipq6018-ddwrt=n/' .config
sed -i 's/^CONFIG_PACKAGE_ath11k-firmware-qcn9074=.*/CONFIG_PACKAGE_ath11k-firmware-qcn9074=n/' .config
sed -i 's/^CONFIG_PACKAGE_ath11k-firmware-qcn9074-ddwrt=.*/CONFIG_PACKAGE_ath11k-firmware-qcn9074-ddwrt=n/' .config
sed -i 's/^CONFIG_PACKAGE_wpad-openssl=.*/CONFIG_PACKAGE_wpad-openssl=n/' .config
sed -i 's/^CONFIG_PACKAGE_hostapd-common=.*/CONFIG_PACKAGE_hostapd-common=n/' .config
