#!/bin/bash

echo "### Intialization"
gem install jekyll
gem install jekyll-paginate
gem install html-proofer

echo "### Building site"
jekyll build --safe

echo "### Validating site"
htmlproofer ./_site --assume-extension
