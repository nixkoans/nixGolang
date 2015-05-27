# Packaging Golang projects with Nix

`default.nix` is the magic.

Running `nix-shell` in our project root directory ensures all dependencies specified by our nix expressions are installed.
