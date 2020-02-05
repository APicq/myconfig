{rustPlatform,stdenv,...}:
rustPlatform.buildRustPackage rec {
  name = "fcvtwo-${version}";
  version = "0.1.4";
  src = /home/pic/projects/rust/fcvtwo ;
  cargoSha256 = "0jacm96l1gw9nxwavqi1x4669cg6lzy9hr18zjpwlcyb3qkw9z7f";
  meta = with stdenv.lib; {
    description = "A flight logbook manager.";
    license = licenses.unlicense;
  };
}
