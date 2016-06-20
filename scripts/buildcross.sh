#! /usr/bin/env bash

# Build m68k-unknown-elf binutils and gcc.

# You will need the gmp and mpfr libraries installed.
# On Ubuntu/Debian (do this before running this script):
#
#    sudo apt-get install libgmp-dev libmpfr-dev
#
# Set the "M68KPREFIX" environment variable to your desired
# installation directory, e.g.:
#
#    export M68KPREFIX=$HOME/Software/m68k-elf
#
# Note that M68KPREFIX should be a directory you can write to.
#
# Then just run this script.  If it runs without errors,
# then you should have a valid m68k toolchain.

# Halt on error
set -e

if [ -z "$M68KPREFIX" ]; then
	echo "Please set M68KPREFIX to desired installation directory"
	exit 1
fi

export PATH=$M68KPREFIX/bin:$PATH

# Fetch and extract binutils if necessary
if [ ! -d binutils-2.23 ]; then
	if [ ! -e binutils-2.23.tar.gz ]; then
		wget http://ftp.gnu.org/gnu/binutils/binutils-2.23.tar.gz
	fi
	gunzip -c binutils-2.23.tar.gz | tar xvf -
fi

# Fetch and extract gcc if necessary
if [ ! -d gcc-4.2.2 ]; then
	if [ ! -e gcc-core-4.4.2.tar.bz2 ]; then
		wget http://ftp.gnu.org/gnu/gcc/gcc-4.4.2/gcc-core-4.4.2.tar.bz2
	fi
	bunzip2 -c gcc-core-4.4.2.tar.bz2 | tar xvf -
fi

# Build everything
mkdir build
cd build
mkdir binutils
mkdir gcc
cd binutils
../../binutils-2.23/configure --target=m68k-unknown-elf --prefix=$M68KPREFIX
make -j 2
make install
cd ../gcc
../../gcc-4.4.2/configure --target=m68k-unknown-elf --disable-libssp \
  --prefix=$M68KPREFIX
make -j 2
make install

echo <<EOF
#######################################################################
                             SUCCESS!!!

It looks like the m68-unknown-elf tools were installed successfully.
#######################################################################
EOF
