---
layout: page
title: Состав команды
permalink: /team/
---

{% assign sortedpeople = site.data.members | sort: "name" %}

{% comment %}
    я не смог разобраться, как центровать маленькие строки
    сетки, поэтому последний ряд - отдельный grid.
    код ниже этого комментария вычисляет число полных рядов
    и отделяет все нужные для них карточки участников,
    остальные вставляются отдельно
{% endcomment %}
{% assign numpeople = sortedpeople | size %}
{% assign fullrows = numpeople | divided_by: 3 %}
{% assign fullrowitems = fullrows | times: 3 %}
{% assign itemsoffullrows = sortedpeople | slice: 0, fullrowitems %}
{% assign numitemsleft = numpeople | minus: fullrowitems  %}
{% assign itemsleft = sortedpeople | slice: fullrowitems, numitemsleft %}

<div class="grid-3cols">
    {% for person in itemsoffullrows %}
        {% include  personcard.html person=person%}
    {% endfor %}
</div>

<div class="grid-{{numitemsleft}}cols">
    {% for person in itemsleft %}
        {% include  personcard.html person=person%}
    {% endfor %}
</div>