#!/bin/bash

git clone https://github.com/kenzok8/openwrt-packages
git clone https://github.com/kenzok8/small
git clone https://github.com/ykxVK8yL5L/luci-theme-vzant
git clone https://github.com/ykxVK8yL5L/mypg

rm -rf ./*/README.md
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore

exit 0
