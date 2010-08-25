require 'formula'

class Flickcurl <Formula
  url 'http://download.dajobe.org/flickcurl/flickcurl-1.19.tar.gz'
  homepage 'http://www.librdf.org/flickcurl'
  md5 '1fa16fcca03bc214715a654e6dd73b1f'

  depends_on 'libxml2'
  depends_on 'curl'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
