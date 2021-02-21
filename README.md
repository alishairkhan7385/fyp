# Leon3
The Leon 3 soft core processor is developed by ESA and is maintained in the GRLIB library from the Cobham Gaisler AB. The GRLIB library contains a flexible makefile implementation to rapidly create custom ASICs by selecting modules within the library. Some of these components are IP blocks and are therefore only free-of-charge whenever it is not used commercially.

## Tools
- Linux Ubuntu-20.04.1
- QuartusII Lite (Web Edition) (18.1.0) to synthesize
- Xilinx ISE Design Suite 14.7
- ModelSIM(-Altera) (10.5b) to simulate the design
- Bare Code Compiler to compile the software
- GNU Make (4.1) to run the Makefiles

## Setting up Linux
For guest linux we need

- VMware Workstation player, download it from [here](https://my.vmware.com/en/web/vmware/downloads/details?downloadGroup=PLAYER-1610&productId=1039&rPId=55792)
- Linux ubuntu iso image, downlaod it from [here](https://ubuntu.com/download/desktop) 

## Instalations
Installation of Quartus and ModelSIM
1. Extract with `tar xfv Quartus-lite-18.1.0.625-linux.tar`
2. Run the setup with `sh setup.sh`  
3. Click through the installer, install the Cyclone IV and Cyclone V packages and make sure to install ModelSIM-Altera (the free version of ModelSIM)
4. Install 32 bit libraries `sudo apt install gcc-multilib`
5. Install some more libraries  
`sudo apt-get install gcc-multilib g++-multilib \
lib32z1 lib32stdc++6 lib32gcc1 \
expat:i386 fontconfig:i386 libfreetype6:i386 libexpat1:i386 libc6:i386 libgtk-3-0:i386 \
libcanberra0:i386 libpng12-0:i386 libice6:i386 libsm6:i386 libncurses5:i386 zlib1g:i386 \
libx11-6:i386 libxau6:i386 libxdmcp6:i386 libxext6:i386 libxft2:i386 libxrender1:i386 \
libxt6:i386 libxtst6:i386`  
6. Download the freetype library [here](http://download.savannah.gnu.org/releases/freetype/freetype-2.4.12.tar.bz2)  
7. Unpack, build and copy to the appropriate directory.
8. 
`cd freetype-2.4.12`    
`./configure --build=i686-pc-linux-gnu "CFLAGS=-m32" "CXXFLAGS=-m32" "LDFLAGS=-m32"`  
`make -j8`  
`mkdir modelsim_ase/lib32`  
`sudo cp freetype-2.4.12/objs/.libs/libfreetype.so* modelsim_ase/lib32`  
9. Open .bashrc to add the binaries to your path:  
`nano ~/.bashrc`  
14. Paste the following at the bottom, where you replace the ALTERAPATH to your quartus installation directory. Restart the terminal when you have saved the file.  
` #Quartus
export ALTERAPATH="/path/to/quartus/"  
export ALTERAOCLSDKROOT="${ALTERAPATH}/hld"  
export QUARTUS_ROOTDIR=${ALTERAPATH}/quartus  
export QUARTUS_ROOTDIR_OVERRIDE="$QUARTUS_ROOTDIR"  
export PATH=$PATH:${ALTERAPATH}/quartus/bin  
export PATH=$PATH:${ALTERAPATH}/nios2eds/bin  
export PATH=$PATH:${QSYS_ROOTDIR}  
export QUARTUS_64BIT=1  
export QSYS_ROOTDIR="QUARTUS_ROOTDIR/sopc_builder/bin"  

#ModelSIM  
export PATH=$PATH:${ALTERAPATH}/modelsim_ase/bin  
#BCC
export PATH=/opt/sparc-elf/bin:$PATH`   
13. Re-open your terminal and edit your binary vsim launch file (if you are unsure where this is located type `which vsim`)
change `mode=${MTI_VCO_MODE:-""}` to `mode=${MTI_VCO_MODE:-"32"}` add `export LD_LIBRARY_PATH=${dir}/lib32` below `dir=dirname "$arg0"` change `vco="linux_rh60"` to `vco="linux"`
14. You should now be able to launch `quartus` by typing quartus and ModelSIM can be launched with `vsim`
For simulations it is very handy to add the grlib library to your path as well:

 1. Download grlib here
 2. nano ~/.bashrc
 3. Paste the following at the bottom of that file, replace the path to your installation of the grlib library.
 `export GRLIB=/path/to/grlib`

   




GRLIB user guide https://www.gaisler.com/products/grlib/grlib.pdf
Cygwin environment info
http://www.es.ele.tue.nl/~ljozwiak/education/5JJ70p/blocks/1/cygwin.html
