class Bison264 < Formula
  desc "Bison is a general-purpose parser generator"
  homepage "https://www.gnu.org/software/bison/"
  url "http://ftpmirror.gnu.org/bison/bison-2.6.4.tar.gz"
  mirror "https://ftp.gnu.org/gnu/bison/bison-2.6.4.tar.gz"
  sha256 "de2d15dfdcfc24405464cb95acc9d5ef31fb2e5be4aca6a530ec59bb57c30e5d"

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
