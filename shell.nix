{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    python312
    python312Packages.pip
    python312Packages.virtualenv
  ];

  shellHook = ''
    export PIP_REQUIRE_VIRTUALENV=1
    export VENV_PATH=$HOME/venv/homepage
    
    if [ ! -d $VENV_PATH ]; then
      python -m venv $VENV_PATH
    fi
    source $VENV_PATH/bin/activate
    pip install -r requirements.txt

    python parser/md.py
    python generate.py
    cd dist
    python -m http.server 8000
  '';
}
