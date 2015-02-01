require 'formula'

class GitCrypt < Formula
  homepage 'https://www.agwa.name/projects/git-crypt/'
  url "https://www.agwa.name/projects/git-crypt/downloads/git-crypt-0.4.2.tar.gz"
  sha1 "c084d73d285ed2c7b9840d4d527cb51ecc7a687b"

  bottle do
    cellar :any
    sha1 "cf82899f5909b6f4fba7375f0ca14328f2b3d6af" => :yosemite
    sha1 "f15f0c82ad1114c2bdc676db25a0801c915eabdf" => :mavericks
    sha1 "0cbd44ee06d875c9784307cc8a45e593dbb5bdd7" => :mountain_lion
  end

  depends_on "openssl"

  def install
    system "make"
    bin.install "git-crypt"
  end

  test do
    system "#{bin}/git-crypt", "keygen", "keyfile"
  end
end
