class Bison241 < Formula
  desc "Bison is a general-purpose parser generator"
  homepage "https://www.gnu.org/software/bison/"
  url "http://ftpmirror.gnu.org/bison/bison-2.4.1.tar.gz"
  mirror "https://ftp.gnu.org/gnu/bison/bison-2.4.1.tar.gz"
  sha256 "6233f763693a3620944ce937a791650867597f542124b6e063e68ee3e1899397"

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
