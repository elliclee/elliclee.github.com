---
layout: post
title: 使用K-means 算法获取图片的最主要颜色 
category: tech
---
![Chrome quick dial](http://dev.leeon.net/wp-content/uploads/2013/01/TM%E6%88%AA%E5%9B%BE20130127213508.png)

Chrome 的默认标签页的网址方块最底部的颜色是这个网站的 FavIcon 图片的最主要颜色，因为 Chrome 是开源的，所以看了一下它的源代码，发现 Chrome 是用K-means 算法来获取图片的的最主要颜色。之前使用C# 来实现过这个需求，而最近在学习JavaScript，所以计划使用JavaScript来实现这个需求，先挖个坑提示自己，完成后再补充内容。