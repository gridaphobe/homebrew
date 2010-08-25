require 'formula'

class Zlib <Formula
  url 'http://zlib.net/zlib-1.2.5.tar.gz'
  homepage 'http://zlib.net'
  md5 'c735eab2d659a96e5a594c9e8541ad63'


  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
