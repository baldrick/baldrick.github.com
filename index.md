---
layout: page
title: Tortured Tech
tagline: I fought the tech...
header-img: "images/Matrix.jpg"
---
{% include JB/setup %}

## My Posts

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
