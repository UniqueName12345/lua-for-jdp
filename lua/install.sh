#!/bin/bash
name=lua
export RAND=$RANDOM
function init() {
	mkdir /tmp/$RAND
}
function get_source() {
    curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
}
function install() {
    echo "Installing Lua version 5.4.4..."
    curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
    tar zxf lua-5.4.4.tar.gz
    cd lua-5.4.4 || exit 1
    make all test
    echo "Lua 5.4.4 installed successfully! On how to use Lua, see https://www.lua.org/manual/5.4/"
}
function remove() {
    echo "Removing Lua 5.4.4..."
    rm -rf lua-5.4.4
    rm lua-5.4.4.tar.gz
    echo "Lua 5.4.4 removed successfully!"
}