#!/bin/bash

PROJECT_NAME=$1
BLUE="\033[0;34m"
CONFIG_PATH="$(pwd)/client-configs"
GIT_PATH=git@github.com:Fblind/client-configs.git

# Pre conditions
# vue cli installed
# npm
# git

# Get client config
echo "${BLUE}Fetching client config"
git clone ${GIT_PATH}
echo "${BLUE}Finish fetching client config"

# Install vue
echo "${BLUE}Installing vue"
vue create $PROJECT_NAME

echo "${BLUE}Enter in folder $PROJECT_NAME"
cd $PROJECT_NAME

# Install vue ecosystem
echo "${BLUE}Installing vue ecosystem"
vue add @vue/pwa
npm i vuetify --save
npm i vuelidate --save
npm i vue-i18n --save
npm i vue-router --save
npm i vuex --save
echo "${BLUE}Finish installing vue ecosystem"

# Install server for static build
echo "${BLUE}Installing static server"
npm i express --save
npm i serve-static --save
cp "${CONFIG_PATH}/index.js" .
echo "${BLUE}Make sure to add 'start': 'node index.js' to package.json"
echo "${BLUE}Finish installing static server"

# Entry point
echo "${BLUE}Adding set-up folder"
cp "${CONFIG_PATH}/set-up" ./src
echo "${BLUE}Adding main.js"
cp "${CONFIG_PATH}/main.js" .

# Add configuration files
echo "${BLUE}Adding configuration files"
echo "${BLUE}Adding editorconfig"
cp "${CONFIG_PATH}/.editorconfig" .
echo "${BLUE}Adding vue.config.js"
cp "${CONFIG_PATH}/vue.config.js" .
echo "${BLUE}Adding config.js"
cp "${CONFIG_PATH}/config.js" .
echo "${BLUE}Adding CI"
cp "${CONFIG_PATH}/.gitlab-ci.yml" .
echo "${BLUE}Finish adding configuration files"

# Remove client-config folder
echo "${BLUE}Removing client config"
rm -R ${CONFIG_PATH}
# TODO: sudo ?
echo "${BLUE}Finish removing client config"
