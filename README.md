<img width="768" src="https://github.com/openwrt/openwrt/blob/main/include/logo.png"/>

## 特别提示 [![](https://img.shields.io/badge/-个人免责声明-FFFFFF.svg)](#特别提示-)

- **本人不对任何人因使用本固件所遭受的任何理论或实际的损失承担责任！**

- **本固件禁止用于任何商业用途，请务必严格遵守国家互联网使用相关法律规定！**

## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 固件默认管理地址：`192.168.1.1` 默认用户：`root` 默认密码：`password`
- 源码：[LiBwrt](https://github.com/LiBwrt/Libwrt)
- 源码：[immortalwrt](https://github.com/immortalwrt/immortalwrt)
- 云编译来源：https://github.com/haiibo/OpenWrt
- 云编译来源：https://github.com/breeze303/openwrt-ci
- 涉及R2S（已交换wan、lan口及led），x86，ax5jdc等ipq60xx，等固件。

## 定制固件 [![](https://img.shields.io/badge/-项目基本编译教程-FFFFFF.svg)](#定制固件-)
1. 首先要登录 Gihub 账号，然后 Fork 此项目到你自己的 Github 仓库
2. 修改 `.github/workflows` 目录对应文件添加或删除编译平台，或者上传自己的 `xx.yml` 文件
3. 修改 `configs` 目录对应文件添加或删除插件，或者上传自己的 `xx.config` 配置文件
4. 修改 `feeds/*.txt` 文件添加或删除插件包
5. 修改 `files/*` 自定义初始化配置，uci-defaults在刷机首次启动加载
6. 修改 `scripts/*` 自定义脚本
7. 插件对应名称及功能请参考恩山网友帖子：[Applications 添加插件应用说明](https://www.right.com.cn/forum/thread-3682029-1-1.html)
8. 编译大概需要3-5小时，编译完成后在仓库主页 [Releases](https://github.com/haiibo/OpenWrt/releases) 对应 Tag 标签内下载固件


**如果看不懂编译界面可以参考 YouTube 视频：[软路由固件 OpenWrt 编译界面设置](https://www.youtube.com/watch?v=jEE_J6-4E3Y&list=WL&index=7)**


<a href="#readme">
<img src="https://img.shields.io/badge/-返回顶部-FFFFFF.svg" title="返回顶部" align="right"/>
</a>

## 关闭wifi
```
CONFIG_PACKAGE_kmod-ath11k=n
CONFIG_PACKAGE_kmod-ath11k-ahb=n
CONFIG_PACKAGE_kmod-ath11k-pci=n
CONFIG_PACKAGE_ath11k-firmware-ipq6018=n
CONFIG_PACKAGE_ath11k-firmware-ipq6018-ddwrt=n
CONFIG_PACKAGE_ath11k-firmware-qcn9074=n
CONFIG_PACKAGE_ath11k-firmware-qcn9074-ddwrt=n
CONFIG_PACKAGE_wpad-openssl=n
CONFIG_PACKAGE_hostapd-common=n
```