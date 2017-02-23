#!/usr/bin/env bash
BRANCH=master
TARGET_REPO=dojoto/dojoto.github.io
PELICAN_OUTPUT_FOLDER=output

echo -e "Testing travis-encrypt"
echo -e "$VARNAME"

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    echo -e "Starting to deploy to Github Pages\n"
    chmod 600 publish-key
    mv publish-key ~/.ssh/publish-key
    eval `ssh-agent -s`
    ssh-add ~/.ssh/publish-key
    if [ "$TRAVIS" == "true" ]; then
#        git config --global user.email "bnafta@gmail.com"
        git config --global user.email "bot@dojoto.xyz"
        git config --global user.name "DojoTO-Bot"
    fi
    # using token clone gh-pages branch
    git clone --quiet --branch=$BRANCH git@github.com/$TARGET_REPO built_website #> /dev/null
    # go into directory and copy data we're interested in to that directory
    cd built_website
    # limpa branch master para nao ficar arquivos lixo, como arquivos excluidos e/ou renomeados
    find . -maxdepth 1 ! -name '.git' ! -name '.*' | xargs rm -rf
    rsync -rv --exclude=.git  ../$PELICAN_OUTPUT_FOLDER/* .
    # add, commit and push files
    git add --all -f .
    git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to Github Pages"
    git push -fq origin $BRANCH > /dev/null
    curl -Is http://www.google.com/webmasters/tools/ping?sitemap=http://dojoto.xyz/sitemap.xml | grep "200 OK" || echo "Erro pinging Google"
    curl -Is http://www.bing.com/webmaster/ping.aspx?siteMap=http://dojoto.xyz/sitemap.xml | grep "200 OK" || echo "Erro pinging Bing"

    echo -e "Deploy completed\n"
fi
