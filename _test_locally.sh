export BUNDLE_WITHOUT=nolocal
rm -r tmp
bundle install
bundle exec jekyll serve
