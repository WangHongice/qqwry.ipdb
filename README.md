# qqwry.ipdb [![build](https://github.com/nmgliangwei/qqwry.ipdb/actions/workflows/build.yml/badge.svg)](https://github.com/nmgliangwei/qqwry.ipdb/actions/workflows/build.yml)

纯真数据库 IPIP.net 格式版，精简并匹配为国家、省、市、运营商。  
版本随上游 [nmgliangwei/qqwry](https://github.com/nmgliangwei/qqwry) 每周自动同步更新。

基于[metowolf/qqwry.ipdb](https://github.com/metowolf/qqwry.ipdb)改版而来，将ipdb文件放入仓库中，方便下载。

主要提供 2 种版本的 ipdb 文件：

+ 标准版（qqwry.ipdb）

+ 原版 (qqwry-raw.ipdb)

主要区别为解析出的字段不同。

## 标准版

标准版兼容所有[官方 IPDB 格式解析代码](https://www.ipip.net/product/client.html)，提供与[官方每周高级版](https://www.ipip.net/product/ip.html#ipv4city)相同的五个解析字段。

|name|info|
|:---:|---|
|`country_name`|国家名称|
|`region_name`|区域名称，中国为省份|
|`city_name`|城市名称，中国为市级|
|`owner_domain`|拥有者域名|
|`isp_domain`|运营商名称|


|                       标准版最新数据下载地址                        |https://raw.gitmirror.com/nmgliangwei/qqwry.ipdb/master/qqwry.ipdb|
|:----------------------------------------------------:|---|

上面为国内加速链接，即下即用，每次更新会覆盖之前的内容，如果想要某个时间段的历史数据可在 [` Release ` ](https://github.com/nmgliangwei/qqwry.ipdb/releases) 里进行查看。


## 原版

原版兼容所有[官方 IPDB 格式解析代码](https://www.ipip.net/product/client.html)，只提供和纯真格式相似的两个解析字段，后面三个字段为兼容占位使用。

|name|info|
|:---:|---|
|`country`|国家名称|
|`area`|区域名称|
|`pad1`|兼容占位|
|`pad2`|兼容占位|
|`pad3`|兼容占位|

|                          原版下载地址                          | https://raw.gitmirror.com/nmgliangwei/qqwry.ipdb/master/qqwry-raw.ipdb |
|:--------------------------------------------------------:|------------------------------------------------------------------------|

上面为国内加速链接，即下即用，每次更新会覆盖之前的内容，如果想要某个时间段的历史数据可在 [` Release ` ](https://github.com/nmgliangwei/qqwry.ipdb/releases) 里进行查看。


## 感谢

 - 特别感谢由 [metowolf/qqwry.ipdb](https://github.com/metowolf/qqwry.ipdb) 提供的基础代码
 - 感谢由 [ipdb](https://github.com/metowolf/ipdb) 提供的 IPDB 格式解析解决方案
 - 感谢由 [@ipdb/packer](https://github.com/metowolf/ipdb-packer) 提供的 IPDB 格式打包解决方案
 - 感谢文章 [IPIP.net 地址库格式分析](https://i-meto.com/ipdb-database/) 提供的格式逆向分析
 - 感谢苏卡卡的 [qqwry-mirror](https://github.com/SukkaW/qqwry-mirror) 项目提供的灵感
 - 感谢纯真网络提供的[免费离线数据库](http://www.cz88bbs.com/)，以及纯真论坛的热心网友们

