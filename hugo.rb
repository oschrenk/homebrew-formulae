require 'formula'

class Hugo < Formula
  homepage 'http://hugo.spf13.com/'
  version '0.10'

  if Hardware.is_64_bit?
    url 'https://github.com/spf13/hugo/releases/download/v0.10/hugo_0.10_darwin_amd64.zip'
    sha256 '91df52bdb7d4ad012582321a49dd70e4396340da5aa8b40a71fe4dd9ad2512d7'
  else
    url 'https://github.com/spf13/hugo/releases/download/v0.10/hugo_0.10_darwin_386.zip'
    sha256 '8ffabc1d945a685948e313905e31c027925467f33bf4bb54b078a4b3f28fc45b'
  end

  depends_on :arch => :intel

  def install
    bin.install 'hugo'
  end
end