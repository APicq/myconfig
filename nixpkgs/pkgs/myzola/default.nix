{ stdenv, fetchFromGitHub, rustPlatform, cmake, pkgconfig, openssl  }:

rustPlatform.buildRustPackage rec {
  pname = "zola";
  name = "myzola" ;
#  version = "0.8.0";

  src = /tmp/zola;

  cargoSha256 = "0i0xqbpbv3md42d2853cfzkhfwlkvxahhz5dldla5x96rm1i2hr8";

  nativeBuildInputs = [ cmake pkgconfig ];
  buildInputs = [ openssl ] ;

  postInstall = ''
    install -D -m 444 completions/zola.bash \
      -t $out/share/bash-completion/completions
    install -D -m 444 completions/_zola \
      -t $out/share/zsh/site-functions
    install -D -m 444 completions/zola.fish \
      -t $out/share/fish/vendor_completions.d
  '';

  meta = with stdenv.lib; {
    description = "A fast static site generator with everything built-in";
    homepage = https://www.getzola.org/;
    license = licenses.mit;
    maintainers = with maintainers; [ dywedir ];
    platforms = platforms.all;
  };
}
