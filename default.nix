{ system ? builtins.currentSystem }:                                                   

let                                                                                    
  pkgs = import <nixpkgs> { inherit system; };                                         

callPackage = pkgs.lib.callPackageWith (pkgs // self);                               

self = {                                                                             
  lammps = callPackage ./pkgs/lammps { };
  app = callPackage ./pkgs/app { };
};                                                                                   
   in self 
