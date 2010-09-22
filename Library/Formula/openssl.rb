require 'formula'

class Openssl <Formula
  url 'http://www.openssl.org/source/openssl-1.0.0a.tar.gz'
  version '1.0.0a'
  homepage 'http://www.openssl.org'
  md5 'e3873edfffc783624cfbdb65e2249cbd'

  keg_only :provided_by_osx

  def install
    ENV.j1 # Breaks on Mac Pro
    system "./Configure", "darwin64-x86_64-cc", "--prefix=#{prefix}",
                       "--openssldir=#{etc}",
                       "zlib-dynamic", "shared"
    system "make"
    system "make test"
    system "make install"
  end
end
