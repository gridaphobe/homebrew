require 'formula'

class Hdf5 <Formula
  url 'http://www.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.8.5-patch1.tar.gz'
  homepage 'http://www.hdfgroup.org/HDF5/'
  md5 'd22a35a17877e369055ed50da5ba91fa'
  version '1.8.5-patch1'

  depends_on 'szip'

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-cxx", "--enable-fortran", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
