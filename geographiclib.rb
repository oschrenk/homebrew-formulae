require 'formula'

class Geographiclib < Formula
  url 'http://downloads.sourceforge.net/project/geographiclib/distrib/GeographicLib-1.22.tar.gz'
  homepage 'http://geographiclib.sourceforge.net/'
  md5 '75e9b723a697d33eadb6b77d0308e1ba'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end