{ pkgs ? import <nixpkgs> {}, isDev ? true, restartRemote ? false, remoteHost ? "hetzner" }:

pkgs.mkShell {
  packages = with pkgs; [
    python312
    python312Packages.pip
    python312Packages.virtualenv
  ];

  shellHook = let
    venvPath = "$HOME/venv/homepage";
  in ''
    export PIP_REQUIRE_VIRTUALENV=1
    export VENV_PATH=${venvPath}
    
    if [ ! -d $VENV_PATH ]; then
      python -m venv $VENV_PATH
    fi
    source $VENV_PATH/bin/activate
    pip install -r requirements.txt
    
    ${if isDev then ''
      pip install watchdog
      python watch.py
    '' else ''
      python parser/md.py
      python generate.py

      rsync -avP --delete ./dist/ ${remoteHost}:/root/homepage/dist
      rsync -avP ./docker-compose.yml ${remoteHost}:/root/homepage/

      ${if restartRemote then ''
        ssh ${remoteHost} "cd /root/homepage && docker compose down && docker compose up -d"
      '' else ""}
    ''}
  '';
}
