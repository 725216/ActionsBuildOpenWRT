#!/bin/bash

# Modify default IP
sed -i '/192.168.123.1/10.0.0.1/g' package/base-files/files/bin/config_generate

sudo apt install libfuse-dev
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang


