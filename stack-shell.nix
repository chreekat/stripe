{ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = [ openssl zlib ];
  shellHook =
    ''
      [ -e .stripekey ] && source .stripekey
    '';
}
