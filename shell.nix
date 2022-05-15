{pkgs ? import <nixpkgs> {}}:
let
  my-python = pkgs.python3.withPackages (python-packages: [
    python-packages.beautifulsoup4
    python-packages.requests
    python-packages.jinja2
    python-packages.httpserver
    ]
  );
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.git
      pkgs.vim
      my-python
    ];
  }
