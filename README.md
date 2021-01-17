# Data Structures and Algorithms in Python

This repo contains a series of IPython Jupyter Notebooks where I've taken notes
on the book _[Data Structures and Algorithms in
Python](https://openlibrary.org/works/OL19548248W)_ by Michael T. Goodrich,
Roberto Tamassia, and Michael H. Goldwasser.

`shell.nix` and `pyproject.toml` files are included to provide dependencies via
[nix](https://nixos.org/explore.html) and
[poetry](https://python-poetry.org/docs/#installing-with-pipx), respectively. I
tried to do everything with nix at first using
[jupyterWith](https://github.com/tweag/jupyterWith) but I had trouble installing
the `matplotlib` dependency. After that I tried listing the python dependencies
straightforwardly in `shell.nix` but the jupyter notebook didn't display a
cursor. This nix + poetry solution seems to work, and it should also work for
folks without nix.

To run the notebooks after [installing
poetry](https://python-poetry.org/docs/#installing-with-pipx) (or running
`nix-shell`):

```shell
poetry install
poetry run jupyter notebook notebooks
```
