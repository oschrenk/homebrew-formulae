require 'formula'

class Geographiclib < Formula
  url 'http://downloads.sourceforge.net/project/geographiclib/distrib/GeographicLib-1.27.tar.gz'
  homepage 'http://geographiclib.sourceforge.net/'
  md5 '9db6c042018c45ebc39d76a858c95afa'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end