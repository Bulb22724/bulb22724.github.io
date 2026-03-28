# bulb22724-github.io 
[![Публикация сайта Jekyll с зависимостями GitHub Pages](https://github.com/Bulb22724/bulb22724.github.io/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://github.com/Bulb22724/bulb22724.github.io/actions/workflows/jekyll-gh-pages.yml)

Сайт команды FTC Bulb 22724.

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
