# WEB-2019
## 主项目从https://github.com/veekxt/hfuu_shop中fork而来.
## Eclipse 安装
1. 官网下载安装包直接安装;
2. 安装必备插件, `(mac)Help->MarketPlace`. 需要的有`JST Server Adapter, Web Developer Tool, Java EE Developer Tools, Eclipse Web Developer Tools`, **一定要先装插件再运行!!!!**
3. 下载Tomcat, Eclipse只支持到Tomcat 8.0, 所以**根据自己的OS安装Tomcat 8.0**. 我选择的版本是8.0.32. 注意官网直接进去的版本是8.5, 这个版本Eclipse不支持. 我的下载地址在https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.32/bin/.
4. `Import Project`到你下载好的Git包.
5. `File->New->other->server->tomcat 8.0`, 导入Tomcat
6. 右击Project文件夹, `Properties->Java Build Path`, 把jxl包的路径改成`本地路径/DatabaseProject/WebContent/.../jxl.jar`. 其它类似, JRE改成自己PATH里的.
7. 运行, 右击project文件夹, 选择`RunAs->Run on Server`即可运行.

## Gitignore 
请务必在gitignore中加入下列语句(如我的ignore):
```
# Gitignore of wayne-mai, May 16, 2019
.vscode/
**/.settings/**
.classpath
.project
```
## 更新规范
创建自己的branch, 采用`pull-request-merge'的工作流.

## TODO
成功启动之后, 数据库部分还有待完成.
