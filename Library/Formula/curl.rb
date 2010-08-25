require 'formula'

class Curl <Formula
  url 'http://curl.haxx.se/download/curl-7.21.1.tar.gz'
  homepage 'http://curl.haxx.se'
  md5 'cafe69114c20c90c47ad3caca05870d8'

  depends_on 'openssl'
  depends_on 'zlib'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
