{ stdenv, fetchurl, libpng,
  mpiEnabled ? false,
  fftw,
  openmpi,
  python,
  python27Full,
  python27Packages
}:

stdenv.mkDerivation {
  name = "app-0.0.1";
  buildInputs = [
    python27Full
    python27Packages.virtualenv
    python27Packages.pip
  ];
  builder = ./builder.sh;
  src = ./.;
  inherit python;
}
