@echo off
emacs -batch -Q -l %~dp0cat -- %*
