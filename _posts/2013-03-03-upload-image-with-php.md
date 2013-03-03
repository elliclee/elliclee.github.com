---
layout: post
title: 微信机器人开发备份录
category: tech
---

对 PHP 不是特别的熟悉，在弄微信机器人（微波炉）时走了一些弯路，纪录下开发过程中的一些细节。

微波炉会把用户的 openid 与 access_token，token_secret 关联起来在数据库中，通过 SQL 语句获取到结果时可以通过
<pre>
is_array(mysql_fetch_array($result))
</pre>
来判断数据库中是否已保存有相关的数据。

除此之外，遇到一个比较大的问题就是上传图片，幸好饭否的 API 设计与 twitter的很像，于是使用了一个开源的 OAuth 库来支持认证与发起 POST 请求，待找个时间再把整个认证与请求统一到这个库中。

tmhOAuth[[fork on Github](https://github.com/themattharris/tmhOAuth)]

然后通过下面的代码就很容易的上传图片了：

<pre>
$tmhOAuth = new tmhOAuth(array(
    'consumer_key'    => 'COMSUMERKEY',
    'consumer_secret' => 'COMSUMERSECRET',
    'user_token'      => 'USERTOKEN',
    'user_secret'     => 'USERSECRET'
    ));
$img = 'image.jpg';

$param = array(
    'photo'     => "@{$img}",
    'status'    => "通过#微信机器人#分享图片"
    );
$code = $tmhOAuth->request('POST', 'http://api.fanfou.com/photos/upload.json', $param, true, true);
</pre>

这里一开始遇到的问题还有就是这个库只允许发布本地的图片，不支持远程URL，所以在发布前需要把图片保存到服务器：
<pre>
file_put_contents('image.jpg', file_get_contents($PicUrl));
</pre>
这里要注意就是文件权限问题，如果遇到这个的提示<code>failed to open stream: Permission denied</code>，这时需要把保存图片的文件夹的权限设置为757即可。

其实很多也就是细节上和产品意识上的问题，例如，通过这些现有开放接口组合出怎样的创意等，以及，倾注在产品的感情等等。


