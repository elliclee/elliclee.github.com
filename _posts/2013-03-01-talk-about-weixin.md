---
layout: post
title: 也来弄个微信机器人
category: tech
---

“微信”是去年延续到现在关于移动互联网的热门话题，公众平台的开放，以及自定义接口的推出，微信已经从一个单纯的 IM 工具转变一个基于开放接口的类App Store，现在基于微信就可以开发出很多有趣的“应用”，因为其技术实现也不难，更重要的是创意上的组合与碰撞。

例如：

- 基于地理位置的应用；
- 基于语音的应用（这个应该可以产生更酷的想法）；
- 各类查询类应用（这个根据没有必要下载独立的应用）；
- 等等；

![微信机器人简单构架](http://ww4.sinaimg.cn/large/a74ecc4cjw1e2ab4ke2lij.jpg)

如上图，开发一个微信机器人在技术上是件比较容易的事情，只要处理好了服务器端的逻辑与代码要求即可。根据自己的需求，用一天半的时间实现了一个叫做“微波炉”的微信机器人，这个机器人的功能主要是通过给微信发送信息，然后就同步到饭否网，同时也可以通过特定的指令来请求饭否上的数据，例如最新的 Timeline 信息列表等。

技术上的细节包括数据库的设计，如果高效的中转和处理 API 请求，安全性等等。

然后，欢迎试用“微波炉”哈。

<img style="width:230px;" src= "http://leeon.net/api/weixin.jpg"/>