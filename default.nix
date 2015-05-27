with import <nixpkgs> {}; with goPackages;

let
  pty = callPackage ./pty.nix {};
in
  buildGoPackage rec {
      name = "nixGolang";
      buildInputs = [ net osext pty ];
      goPackagePath = "github.com/calvinchengx/nixGolang";
  }
