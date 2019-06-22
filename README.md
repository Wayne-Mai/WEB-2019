# WEB-2019
## 主项目从https://github.com/veekxt/hfuu_shop 中fork而来.
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

## 分工
| 学号       | 姓名  | 初步分工      |
|----------|-----|-----------|
| 16337157 | 刘上华 | 前端        |
| 16337173 | 刘喆  | 前端        |
| 16337179 | 麦金杰 | 设计和文档, 前端 |
| 16337187 | 欧阳凯 | 后台,数据库    |
| 16337205 | 邵鑫  | 后台        |


## Version Beta 1.0
### Task: 登录界面优化
参照中山大学官网, 或者https://skilful-display-212606.appspot.com/ .
风格可以参照下图. 
![](./SourceCode/readmeDisplay/img0.png)

具体要求:
1. 主题是数据科学与计算机学院请假系统, 顶栏和尾栏自行设计, **顶尾栏设计需要在各个页面都使用**;
2. 首页应当有适当的js美化;
3. 可选: 可以加入验证码系统, 有些平台提供了API;
4. 可选: 更换背景图片为中大相关;
5. 原有接口不变, 只需更改样式;
6. 原界面输入框未对齐, 需要做美化;

## Version Beta 2.0
### Task: 登录界面优化 Continued
首页设计的样式和风格应用(copy)到其它界面上.
另外各个页面的背景图也都换成中大风格的(找几张图片就好了), 尽量好看些, 样式可能的话不要继续repeat-y, 挺难看的. 


### Task: 界面风格优化1
![](./SourceCode/readmeDisplay/img1.png)

1. 各字段调整为:
加班类型->请假类型, 分因公请假, 因私请假, 其他三种;
加班日期->请假日期; 
2. 加入两个部分, 请假理由(textarea, 文本编辑), 请假证明等(可选), 请假证明
为文件类型, 需要上传; 请假证明变量名为proof, 文件名为id_proof.*;
3. 风格调整, 将主题色调, 首栏和尾栏调整为中大绿(参考首页);

### Task: 界面风格优化2
![](./SourceCode/readmeDisplay/img2.png)
1. 字段调整, 员工名改为姓名, 加班等改成请假;
2. 加入新字段, 学号, 变量名为id;
3. 加入新一列, 展示同学照片, 即相片栏, 后端传来的变量名为photo, 照片的命名格式为id.jpg, id为学号;
4. 界面设计参考Task: 界面风格优化1, 保持一致即可;
5. 另外顶栏工具申请加班, 申请结果等选项不够美观, 需要进行一定优化;

### Task: 界面风格优化3
![](./SourceCode/readmeDisplay/img4.png)
1. 与Task: 界面风格优化2基本一致, 只是界面不同;
2. 加入在界面风格优化1中上传的下载请假文件部分, 即新增字段: 请假证明, 各栏均有下载按钮,;
3. 加入请假理由字段, 点击弹出窗口, 展示请假理由, 变量名为reason;

### Task: 界面风格优化4
![](./SourceCode/readmeDisplay/img5.png)
1. 与Task: 界面风格优化3基本一致, 只是界面不同;

## Version Beta 4.0
### Task: 新增部分

1. 注册界面;
2. 登录要把管理员用户区分开;
3. 个人资料允许编辑;
4. 注册页面, 资料修改页面

### Task: Merge时需要的fix

1. error page还有bug没做完: 
跳转的时候秒数没有倒计时了

2. 跳转部分还需要再优化一下, 省略一些adminMenu之类的无用
菜单.

3. 另外请假类型这个问题, 不宜显示数字, 直接显示请假原因最好;

4. 页面的`<title>`部分, 改成请假系统对应的部分;

