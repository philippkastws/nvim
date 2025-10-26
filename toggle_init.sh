#!/bin/bash

if [ -f "init.vim" ]; then
  mv init.vim init.vim.NO
  mv init.lua.NO init.lua
else
  mv init.vim.NO init.vim
  mv init.lua init.lua.NO
fi
