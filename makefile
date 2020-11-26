export projdir:=$(shell git rev-parse --show-toplevel)
venv=$(projdir)/venv
pymajor=3
pyminor=8

SHELL:=/usr/bin/env bash -l
export BASH_ENV=$(projdir)/runcom/bash


.FORCE:

venv: .FORCE
	if [ -e $(venv)/bin/activate ]; then exit 0; else virtualenv -p python$(pymajor).$(pyminor) $(venv); fi
	python3 -m pip install -e .
