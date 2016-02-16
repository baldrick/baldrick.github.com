---
layout: page
title: Tortured Tech
tagline: I fought the tech...
header-img: "images/Matrix.jpg"
---

layout.theme.name: {{ layout.theme.name }}

{% include JB/setup %}

## My Posts

provider: {{ site.JB.setup.provider }}

safe: {{ site.safe }}

site.JB_BASE_PATH: {{ site.JB_BASE_PATH }}

site.JB.ASSET_PATH: {{ site.JB.ASSET_PATH }}

page.theme.name: {{ page.theme.name }}

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
