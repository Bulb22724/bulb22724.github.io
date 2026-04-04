---
layout: page
title: Галерея
permalink: /gallery
---

{% include heading.html text="Избранные фото" id="favorites" level=1%}
{% for photo in site.data.gallery.favorites %}
![{{photo.label}}]({{photo.url}})
<p style="text-align: center">{{photo.label}}</p>
{% unless forloop.last %}
---
{% endunless %}
{% endfor %}

---
<!--script src="/assets/scripts/gallery.js"-->
{% for category in site.data.gallery.others %}
{% include heading.html text=category.name id=category.id level=1 %}
{% include gallery-embed.html photos=category.photos %}
{% endfor %}