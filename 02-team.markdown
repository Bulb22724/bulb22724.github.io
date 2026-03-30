---
layout: page
title: Текущий состав команды
permalink: /team/
---


{% include heading.html text="Участники" id="members" %}

{% include overflowing-3grid.html people=site.data.members template="personcard.html" %}

{% include heading.html text="Руководители и наставники" id="mentors" %}
фото временные

{% include overflowing-3grid.html people=site.data.mentors template="mentorcard.html" dontsort=true%}