# ZeroBlog
Demo for decentralized, self publishing blogging platform.

# 测试站点
http://127.0.0.1:43110/19qHLGN2KEoU6CJipGbSK1hxDvUNKBWHGc

# 安装
英文教程: http://127.0.0.1:43110/Blog.ZeroNetwork.bit/?Post:3:How+to+have+a+blog+like+this
## 克隆
直接克隆 http://127.0.0.1:43110/19qHLGN2KEoU6CJipGbSK1hxDvUNKBWHGc

## 手动
* 退出 ZeroNet
* 使用`python zeronet.py siteCreate`创建一个新站点
* 下载 [zip](https://github.com/ysc3839/ZeroBlog/archive/master.zip)
* 将 zip 中的文件解压到 data/[刚才创建的站点地址]
* 将 `data-default` 重命名为 `data`, 并将 `data/users/content-default.json` 重命名为 `data/users/content.json`
* 执行命令 `zeronet.py siteSign [站点地址] --inner_path data/users/content.json` 以签署评论规则
* 执行命令 `zeronet.py siteSign [站点地址] --publish`
