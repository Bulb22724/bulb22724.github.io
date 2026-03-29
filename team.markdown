---
layout: page
title: Состав команды
permalink: /team/
---

<div class="grid-3cols">
    {% assign sortedpeople = site.data.members | sort: "name" %}
    {% for person in sortedpeople %}
        <div>
            <img src="/assets/memberphotos/{{person.photo}}" />
            <p>{{person.name}}</p>
            
            {% assign sortedroles = person.roles | sort %}
            {% for role in sortedroles %}
                <p style="text-align: left;"><span class="material-symbols-outlined" style="vertical-align: bottom;" >{{site.data.roles[role]}}</span> {{role}} </p>
            {% endfor %}
        </div>
    {% endfor %}
</div>