{ pkgs ? import <nixpkgs> {}, dev ? false, restartRemote ? false }:

pkgs.mkShell {
  packages = with pkgs; [
    python312
    python312Packages.pip
    python312Packages.virtualenv
  ];

  shellHook = let
    venvPath = "$HOME/.venv/homepage";
    remoteHost = "personal-vps";
  in ''
    export PIP_REQUIRE_VIRTUALENV=1
    export VENV_PATH=${venvPath}

    if [ ! -d $VENV_PATH ]; then
      python -m venv $VENV_PATH
    fi
    source $VENV_PATH/bin/activate
    pip install -r requirements.txt

    python generate.py

    ${if dev then ''
      pip install watchdog==6.0.0
      python watch.py && exit
    '' else ''
      rsync -avP --delete ./{dist,compose.yml} ${remoteHost}:/root/homepage/

      ${if restartRemote then ''
        ssh ${remoteHost} "cd /root/homepage && docker compose down && docker compose up -d --remove-orphans"
      '' else ""}
      exit
    ''}
  '';
}
