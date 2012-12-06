require 'formula'

class Geographiclib < Formula
  url 'http://downloads.sourceforge.net/project/geographiclib/distrib/GeographicLib-1.27.tar.gz'
  homepage 'http://geographiclib.sourceforge.net/'
  sha1 '6dfdaead49267b8d96c450686f68345e5ab190f3'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end