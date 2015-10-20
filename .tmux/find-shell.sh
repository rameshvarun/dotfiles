#!/usr/bin/env bash
if which fish; then
	fish
elif which zsh; then
	zsh
elif which tcsh; then
	tcsh
else
	bash
fi
