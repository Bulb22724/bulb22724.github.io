---
layout: page
title: Галерея
permalink: /gallery
---

---
<!--script src="/assets/scripts/gallery.js"-->
{% for category in site.data.gallery.categories %}
{% include heading.html text=category.name id=category.id level=1 %}
{% include gallery-embed.html photos=category.photos id=category.id %}
{% endfor %}