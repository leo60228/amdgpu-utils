{ pkgs ? import <nixpkgs> {} }:

let python = import ./requirements.nix { inherit pkgs; }; in python.packages."amdgpu-utils"
