SHELL = /bin/bash

PROJECT := refresh

.DEFAULT_GOAL: test

# ------------------------------------------------------------------------------
test:
	poetry run pytest

build:
	poetry build

poetry-install:
	poetry install

poetry-update:
	poetry update

# ------------------------------------------------------------------------------
ifndef VIRTUAL_ENV
WITH_VENV := poetry run
else
WITH_VENV :=
endif

PYTHON := $(WITH_VENV) python3

ipykernel:
	$(PYTHON) -m ipykernel install     \
		--user                           \
		--name $(PROJECT)-python         \
		--display-name $(PROJECT)-python \
	# END

ipython:
	$(WITH_VENV) ipython

install-kernels: ipykernel

install-labextensions:
	$(WITH_VENV) jupyter labextension install \
		@jupyter-widgets/jupyterlab-manager     \
		@jupyterlab/debugger                    \
		@jupyterlab/git                         \
		@jupyterlab/shortcutui                  \
		@jupyterlab/toc                         \
		jupyterlab-jupytext                     \
		nbdime-jupyterlab                       \
	# END

jupyter:
	$(WITH_VENV) jupyter lab                                                  \
	  --NotebookApp.open_browser=False                                        \
	  --NotebookApp.port=8038                                                 \
	  --NotebookApp.contents_manager_class="jupytext.TextFileContentsManager" \
	# END
