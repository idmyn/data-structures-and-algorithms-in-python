let
  jupyter = import (builtins.fetchGit {
    url = https://github.com/tweag/jupyterWith;
    rev = "10d64ee254050de69d0dc51c9c39fdadf1398c38";
  }) {};

  ipython = jupyter.kernels.iPythonWith {
    name = "python";
  };

  jupyterEnvironment = jupyter.jupyterlabWith {
    kernels = [ ipython ];
  };
in
  jupyterEnvironment.env
