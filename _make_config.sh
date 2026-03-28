#gpp _config_template.yml -D... -o _config.yml
if [ -z $1 ]; then
    echo "режим работы не указан. введите 'local' для локального теста (только theme) или 'github' для github (только remote_theme)"
    read mode
    ./_make_config.sh $mode
elif [ $1 == "local" ]; then
    gpp _config_template.yml -DLOCALTEST -o _config.yml
elif [ $1 == "github" ]; then
    gpp _config_template.yml -o _config.yml
else
    echo "неизвестный режим работы $1 (запустите без аргументов для вариантов)"
fi
