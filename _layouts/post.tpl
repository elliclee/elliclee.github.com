---
layout: page

pageClass: page-type-post

---

<div class="trace">/ <a href="/">{{ site.name }}</a> / {{ page.title }}</div>

<article>
	<h1><a href="{{ page.url }}">{{ page.title }}</a></h1>
	{% assign post = page %}
	{% include meta.tpl %}
	
	<div class="entry">
  		{% if excerpt and post.excerpt %}
   			{{ post.excerpt }}
    		<p> <a href="{{ post.url }}/#more" class="more-link"><span class="readmore">Read the rest of this entry »</span></a></p>
  		{% else %}
    		{{ post.content | mark_excerpt }}
  		{% endif %}
	</div>
	{% capture permaurl %}http://{{site.host}}{{ page.url }}{% endcapture %}
	<!--<p class="permalink">永久链接：<a href="{{ permaurl }}">{{ permaurl }}</a></p>-->
</article>
<div id="disqus_thread" class="comments"></div>
