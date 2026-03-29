# bulb22724-github.io
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