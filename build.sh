#!/bin/bash
read -p "Enter Version : " version

rm -rf ./affiliate-blocks;
rm ./rm affiliate-blocks-*.zip;

mkdir affiliate-blocks;
#cp -R . affiliate-blocks;

rsync -av --exclude='.git' --exclude='.babelrc' --exclude='.gitignore' --exclude='.github' --exclude='.gitmodules' --exclude='node_modules' --exclude='build.sh' ./ ./affiliate-blocks

rm -rf ./affiliate-blocks/admin/app/src;

rm -rf ./affiliate-blocks/affiliate-blocks;

zip -r affiliate-blocks-v$version.zip ./affiliate-blocks;

rm -rf ./affiliate-blocks;
