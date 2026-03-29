---
layout: page
title: Состав команды
permalink: /team/
---

<div class="grid-3cols">
    {% for person in site.data.members %}
        <div>
            <img src="{{person.photo}}" />
            <p>{{person.name}}</p>
            <!--p class="material-symbols-outlined">
                {% for role in person.roles %}
                    <span title="{{role}}">{{site.data.roles[role]}}</span>
                {% endfor %}
            </p-->
            {% for role in person.roles %}
                <p style="text-align: left;"><span class="material-symbols-outlined" style="vertical-align: bottom;" >{{site.data.roles[role]}}</span> {{role}} </p>
            {% endfor %}
        </div>
    {% endfor %}
</div>