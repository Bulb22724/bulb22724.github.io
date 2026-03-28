if ! gpp --help > /dev/null; then
    printf "не удалось найти gpp. установите: \n - системы, основанные на Debian: sudo apt install gpp \n - основанные на Arch: yay install gpp (или любым другим AUR-менеджером)\n"
    exit
fi

if [ -z $1 ]; then
    echo "режим работы не указан. введите 'local' для локального теста (только theme) или 'github' для github (только remote_theme)"
    read mode
    ./_make_config.sh $mode
elif [ $1 == "local" ]; then
    gpp _config_template.yml -DLOCALTEST -o _config.yml
    echo "создан файл конфигурации для тестирования на localhost:4000"
elif [ $1 == "github" ]; then
    gpp _config_template.yml -o _config.yml
    echo "создан файл конфигурации для публикации на bulb22724.github.io"
else
    echo "неизвестный режим работы $1 (запустите без аргументов для вариантов)"
fi
