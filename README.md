# bulb22724-github.io 
[![Публикация сайта Jekyll с зависимостями GitHub Pages](https://github.com/Bulb22724/bulb22724.github.io/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://github.com/Bulb22724/bulb22724.github.io/actions/workflows/jekyll-gh-pages.yml)

Сайт команды FTC Bulb 22724.

## Решение проблем
Информацию о проблемах, возникших по ходу разработки,
можно найти в файле [`_project_problems.md`](/_project_problems.md).

## Разработка
Для начала вам потребуются `ruby`, `bundler` и `gpp`.

Клонируйте репозиторий:
```
git clone https://github.com/bulb22724/bulb22724.github.io.git
```
Установите зависимости проекта:
```
bundle install
```
Пожалуйста, работайте только на ветке `dev` и создавайте pull request при готовности опубликовать сайт.

## Создание новых страниц
Создайте новый файл в корне репозитория с названием `XX-NAME.markdown`, где `XX` - двухзначный
порядковый номер страницы в навигационной строке сайта и `NAME` - краткое название страницы
на английском языке.

Сверху файла добавьте front matter:
```yaml
---
layout: page
title: НАЗВАНИЕ СТРАНИЦЫ
permalink: ССЫЛКА НА СТРАНИЦУ
---
```
Например: 
```yaml
---
layout: page
title: Выпускники
permalink: /graduates
---
```

Для заголовков используйте следующее утверждение:
```liquid
{% include heading.html text="Текст заголовка" id="Идентификатор заголовка" level=Уровень %}
```
Идентификатор используется для ссылок, указывающих на секцию страницы.
Например, чтобы указать на заголовок с `id="september"`, в конец
URL страницы нужно добавить `#september`.

Уровень определяет размер - 1 (`h1`) самый большой, 6 (`h6`) самый маленький.
Если не указан, берётся 1.

## Тестирование
Без публикации на GitHub Pages сайт можно тестировать локально. Это
делается при помощи скрипта `_test_locally.sh`. Он создаёт тестовую
конфигурацию, запускает сервер Jekyll и открывает сайт в браузере,
установленном по умолчанию.

Также для тестирования предоставляется задача Visual Studio Code.
Для выполнения, нажмите `Ctrl`-`Shift`-`P`, выберите `Tasks: Run Task` >
`Регенерировать конфигурацию и запустить на localhost:4000` >
`Continue without scanning the output`. Это эквивалентно вышеупомянотому
скрипту.

Тестирование на Windows возможно при помощи [WSL (Windows Subsystem for Linux)](https://learn.microsoft.com/ru-ru/windows/wsl/install).
