class Bison242 < Formula
  desc "Bison is a general-purpose parser generator"
  homepage "https://www.gnu.org/software/bison/"
  url "http://ftpmirror.gnu.org/bison/bison-2.4.2.tar.gz"
  mirror "https://ftp.gnu.org/gnu/bison/bison-2.4.2.tar.gz"
  sha256 "e2f8857f8d6fb6d60ee6d1105bdb7f891e82f2dc57dcb674a07684ebbe4a1206"

  conflicts_with "bison", :because => "Differing versions of the same formula"

  keg_only :provided_by_osx, "Some formulae require a newer version of bison."

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/bison", "--version"
  end
end
