self: super: {
  fcvtwo = self.rustPlatform.buildRustPackage rec {
      name = "fcvtwo-${version}";
      version = "0.1.4";
      src = /home/pic/projects/rust/fcvtwo ;
      cargoSha256 = "17d62z72dgz2br82hqq9zzhzm885fw4j6yap3yi6630il3za1j44";
      meta = with super.stdenv.lib; {
        description = "A flight logbook manager.";
        license = licenses.unlicense;
      };
  };
}

