{ goPackages, fetchFromGitHub }:

goPackages.buildGoPackage rec {
  rev = "67e2db24c831afa6c64fc17b4a143390674365ef";
  name = "pty-${rev}";
  goPackagePath = "github.com/kr/pty";
  src = fetchFromGitHub {
    inherit rev;
    owner = "kr";
    repo = "pty";
    sha256 = "1l3z3wbb112ar9br44m8g838z0pq2gfxcp5s3ka0xvm1hjvanw2d";
  };
}
