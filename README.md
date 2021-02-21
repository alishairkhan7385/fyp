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
`sudo apt-get install gcc-multilib g++-multilib`  
`lib32z1 lib32stdc++6 lib32gcc1`  
`expat:i386 fontconfig:i386 libfreetype6:i386 libexpat1:i386 libc6:i386 libgtk-3-0:i386`  
`libpng12-0:i386 libice6:i386 libsm6:i386 libncurses5:i386 zlib1g:i386`  
`libx11-6:i386 libxau6:i386 libxdmcp6:i386 libxext6:i386 libxft2:i386 libxrender1:i386`  
`libxt6:i386 libxtst6:i386`  
There might be following error here  
`E: Unable to locate package libpng12-0:i386`  
To resolve it run following commands, also can check complete blog [here](https://www.linuxuprising.com/2018/05/fix-libpng12-0-missing-in-ubuntu-1804.html)  
`sudo add-apt-repository ppa:linuxuprising/libpng12`    
`sudo apt update`    
`sudo apt install libpng12-0`  
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
 10. Paste the following at the bottom, where you replace the ALTERAPATH to your quartus installation directory. Restart the terminal when you have saved the file.  
`export ALTERAPATH="/path/to/quartus/"`  
`export ALTERAOCLSDKROOT="${ALTERAPATH}/hld"`  
`export QUARTUS_ROOTDIR=${ALTERAPATH}/quartus`  
`export QUARTUS_ROOTDIR_OVERRIDE="$QUARTUS_ROOTDIR"`  
`export PATH=$PATH:${ALTERAPATH}/quartus/bin`  
`export PATH=$PATH:${ALTERAPATH}/nios2eds/bin`  
`export PATH=$PATH:${QSYS_ROOTDIR}`  
`export QUARTUS_64BIT=1`  
`export QSYS_ROOTDIR="QUARTUS_ROOTDIR/sopc_builder/bin"`  
 
`export PATH=$PATH:${ALTERAPATH}/modelsim_ase/bin`  

`export PATH=/opt/sparc-elf/bin:$PATH`   
11. Re-open your terminal and edit your binary vsim launch file (if you are unsure where this is located type `which vsim`)
change `mode=${MTI_VCO_MODE:-""}` to `mode=${MTI_VCO_MODE:-"32"}` add `export LD_LIBRARY_PATH=${dir}/lib32` below `dir=dirname "$arg0"` change `vco="linux_rh60"` to `vco="linux"`

For simulations it is very handy to add the grlib library to your path as well:

 1. Download grlib here
 2. nano ~/.bashrc
 3. Paste the following at the bottom of that file, replace the path to your installation of the grlib library.  
 `export GRLIB=/path/to/grlib`

## Installing Bare C compiler (BCC) for soft code compilation
Download the zipped file from [gaisler](https://www.gaisler.com/anonftp/bcc/bin/linux/).Extract it and copy the file to /opt/ execute `sudo cp -r sparc-elf-3.4.4 /opt/`

## Simulation
Follow the instructions section 3 in grlib.pdf. It basically boils down to the following (assuming you have correctly cloned the git repository):

1. Go to `home/test/Downloads/grlib-gpl-2018.3-b4226/designs/leon3-gr-xc3s-1500` directory and execute  
`make install-altera`  
2. Execute `make xconfig` to give design configuration. Here click on `VHDL debugging` and check yes for `Accelerated UART tracing`. GO back to main menu and click `Save and Exit`.
Execute `make vsim` you might get this error  
` ** Error: (vcom-11) Could not find unisim.ramb16_s36_s36.
###### ../../lib/techmap/unisim/memory_unisim.vhd(36): use unisim.RAMB16_S36_S36;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(36): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S36_S36".
** Error: (vcom-11) Could not find unisim.ramb16_s36.
###### ../../lib/techmap/unisim/memory_unisim.vhd(37): use unisim.RAMB16_S36;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(37): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S36".
** Error: (vcom-11) Could not find unisim.ramb16_s18.
###### ../../lib/techmap/unisim/memory_unisim.vhd(38): use unisim.RAMB16_S18;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(38): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S18".
** Error: (vcom-11) Could not find unisim.ramb16_s9.
###### ../../lib/techmap/unisim/memory_unisim.vhd(39): use unisim.RAMB16_S9;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(39): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S9".
** Error: (vcom-11) Could not find unisim.ramb16_s4.
###### ../../lib/techmap/unisim/memory_unisim.vhd(40): use unisim.RAMB16_S4;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(40): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S4".
** Error: (vcom-11) Could not find unisim.ramb16_s2.
###### ../../lib/techmap/unisim/memory_unisim.vhd(41): use unisim.RAMB16_S2;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(41): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S2".
** Error: (vcom-11) Could not find unisim.ramb16_s1.
###### ../../lib/techmap/unisim/memory_unisim.vhd(42): use unisim.RAMB16_S1;
** Error (suppressible): ../../lib/techmap/unisim/memory_unisim.vhd(42): (vcom-1195) Cannot find expanded name "unisim.RAMB16_S1".
###### ../../lib/techmap/unisim/memory_unisim.vhd(45): entity unisim_syncram is
** Error: ../../lib/techmap/unisim/memory_unisim.vhd(45): VHDL Compiler exiting
make[1]: *** [make.vsim:51: vsim] Error 2
make[1]: Leaving directory '/home/test/Downloads/grlib-gpl-2018.3-b4226/designs/leon3-gr-xc3s-1500'
make: *** [../../bin/Makefile:370: make.work] Error 2 `  

It means some VHDL packages are missing.
3. To add these packages go to (in my case) `/home/void/Downloads/xilinx/14.7/ISE_DS/ISE/vhdl/src/unisims` copy `unisim_VCOMP.vhd`, `unisim_VPKG.vhd` and all `.vhd` packages in the `primitive` folder to `/home/test/Downloads/grlib-gpl-2018.3-b4226/lib/techmap/unisim`  
4. Now execute 'make vsim-launch' to launch ModelSim.  
5. To compile all those missing packages execute following commands in ModelSim Transcript.  
   `vcom -93 -explicit -reportprogress 300 -work unisim {/home/test/Downloads/grlib-gpl-2018.3-b4226/lib/techmap/unisim/unisim_VCOMP.vhd}`  
   `vcom -93 -explicit -reportprogress 300 -work unisim {/home/test/Downloads/grlib-gpl-2018.3-b4226/lib/techmap/unisim/unisim_VPKG.vhd}`  
   `vcom -93 -explicit -reportprogress 300 -work unisim {/home/test/Downloads/grlib-gpl-2018.3-b4226/lib/techmap/unisim/*.vhd}`  
6. Now execute `make vsim` in ModelSim Transcript, this time there would be no errors for missing packages.
7. Finally execute `make vsim-run` to run all and see the waveforms.
8. To add c code to the simulations, go to systest.c file located in (in my case) `/home/test/Downloads/grlib-gpl-2018.3-b4226/designs/leon3-gr-xc3s-1500/systest.c` and add some c code in it, for example
  ``` c++
  main()
{
printf("\n\n Hello LEON3 World!!!\n");
}
```




GRLIB user guide https://www.gaisler.com/products/grlib/grlib.pdf
Cygwin environment info
http://www.es.ele.tue.nl/~ljozwiak/education/5JJ70p/blocks/1/cygwin.html
