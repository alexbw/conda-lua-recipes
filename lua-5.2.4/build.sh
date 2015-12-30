if [ `uname` == Darwin ]; then
	make macosx
fi
if [ `uname` == Linux ]; then
	make linux
fi
make install INSTALL_TOP=$PREFIX