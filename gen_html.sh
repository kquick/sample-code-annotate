#!/usr/bin/env bash
emacs -batch --load myexport.el --visit=sample.org --funcall org-html-export-to-html
