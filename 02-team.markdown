---
layout: page
title: Текущий состав команды
permalink: /team/
---



{% comment %}
    я не смог разобраться, как центровать маленькие строки
    сетки, поэтому последний ряд - отдельный grid.
    код ниже этого комментария вычисляет число полных рядов
    и отделяет все нужные для них карточки участников,
    остальные вставляются отдельно
{% endcomment %}


{% include heading.html text="Участники" id="members" %}

{% include overflowing-3grid.html people=site.data.members template="personcard.html" %}

{% include heading.html text="Руководители и наставники" id="mentors" %}
фото временные

{% include overflowing-3grid.html people=site.data.mentors template="mentorcard.html" dontsort=true%}