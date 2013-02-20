---
layout: post
title: 使用 K-means 算法获取图片的最主要颜色 
category: tech
---
![Chrome quick dial](http://dev.leeon.net/wp-content/uploads/2013/01/TM%E6%88%AA%E5%9B%BE20130127213508.png)

Chrome 的默认标签页的网址方块最底部的颜色是这个网站的 FavIcon 图片的最主要颜色，因为 Chrome 是开源的，所以看了一下它的源代码，发现 Chrome 是用K-means 算法来获取图片的的最主要颜色。之前使用C# 来实现过这个需求，而最近在学习JavaScript，所以计划使用JavaScript来实现这个需求，先挖个坑提示自己，完成后再补充内容。

### 概述 ###
处理过程主要涉及的知识点有：HTML5中的Canvas，JavaScript 相关的背景知识，K-means 算法的具体JavaScript语言实现。

在一些获取图片的平均(mean)颜色算法中，只是简单的获取图片中的 RGB 颜色值，然后分别求这三个值 的均值来求平均颜色，这样的处理方式过于粗糙，同时也没有考虑到图片透明度等问题，所以更好的方式是通过分析图片的HSB颜色模式更准确。

具体实现效果请点击 [Demo](http://elliclee.github.com/demo/js/kmeans.html "使用 K-means 算法获取图片的主要颜色") 查看。