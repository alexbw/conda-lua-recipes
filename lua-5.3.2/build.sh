if [ `uname` == Darwin ]; then
	make macosx INSTALL_TOP=$PREFIX
fi
if [ `uname` == Linux ]; then
	make linux INSTALL_TOP=$PREFIX
fi
make install INSTALL_TOP=$PREFIX