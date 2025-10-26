#!/bin/bash

if [ -f "init.vim" ]; then
  mv init.vim init.NO.vim
  mv init.NO.lua init.lua
else
  mv init.NO.vim init.vim
  mv init.lua init.NO.lua
fi
