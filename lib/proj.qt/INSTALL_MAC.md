using brew
==

brew install glew libpng libjpeg libtiff

manually
==

glew 1.9.0 http://glew.sourceforge.net/

>    make SYSTEM=darwin-x86_64 && sudo make SYSTEM=darwin-x86_64 install GLEW_DEST=/usr/local

libpng 1.4.12

> wget http://sourceforge.net/projects/libpng/files/libpng14/1.4.12/libpng-1.4.12.tar.gz/download
> cp scripts/makefile.darwin makefile
> make test
> make install DESTDIR=/tmp/build/libpng

libjpeg http://sourceforge.net/projects/libjpeg/?source=dlp
> ./configure --disable-shared
> make
 
libtiff

