---
layout: post
title: PHP 中 POST JSON 数据
category: tech
---
在写微信的自定义菜单的 PHP 接口时，遇到一些小问题，其实就是自己在概念上的一些不牢固。

在创建自定义菜单时，需要像微信服务器 POST 一段特定的 JSON 结构体，而问题出于在 curl POST 时，设定的 CURLOPT_POSTFIELDS 参数是 JSON 对象，而不是 JSON 字符串，这样是有问题的，所以如果要通过 curl POST JSON 对象时，只需要通过下面的代码即可实现：
<pre>
function post($url, $jsonData){
	$ch = curl_init($url) ; 
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
	curl_setopt($ch, CURLOPT_POSTFIELDS,$jsonData);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 

	$result = curl_exec($ch) ; 
	curl_close($ch) ; 
	return $result;
}
</pre>

ps. 如果要传递一个标准 Array 对象时，如果 Array 有嵌套的话，直接传送的话也是有问题的，这里可以把 Array 给转化一下：<code>http_build_query($data)</code> 即可。

再 ps.微信的文档组织的不是一般的乱。