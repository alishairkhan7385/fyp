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


`code`


GRLIB user guide https://www.gaisler.com/products/grlib/grlib.pdf
Cygwin environment info
http://www.es.ele.tue.nl/~ljozwiak/education/5JJ70p/blocks/1/cygwin.html
