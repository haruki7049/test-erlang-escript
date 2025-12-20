{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.beam28Packages.erlang
    pkgs.p7zip
  ];
}
