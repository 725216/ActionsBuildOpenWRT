#!/bin/bash

# Modify default IP
sed -i 's/192.168.123.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sudo apt install libfuse-dev
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang
