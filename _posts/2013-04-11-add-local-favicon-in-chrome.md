---
layout: post
title: Chrome 中加载本地 Favicon
category: writing
---

因为在弄一个自己喜欢的风格的 Chrome 默认导航页，然后发现通过直接指定 favicon 的本地路径时 Chrome 是不会显示这个 favicon 的，而在 firefox 中就可以正常显示。
<pre>
link rel="shortcut icon" href="images/favicon.ico"
</pre>

具体原因还没有发现，不过处理的方式倒想到，就是直接把 favicon 转成 base64 格式，然后直接指定 favicon 的内容即可，例如访问[这里](http://webcodertools.com/imagetobase64converter/Create)，上传ico 文件即可帮你转码，然后在代码中写成以下方式即可：
<pre>
link rel="shortcut icon" href="data:image/x-icon;base64,base64 数据"
</pre>
这时，就可以正常的显示这个 favicon 了：

![favicon](http://ww4.sinaimg.cn/large/a74ecc4cjw1e3m0r293jpj.jpg)