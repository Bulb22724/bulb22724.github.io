./_make_config.sh local

# если это сделать по-человечески прямой командой, то не видит bundle
bundle=$(which bundle) 
$bundle exec jekyll serve -o