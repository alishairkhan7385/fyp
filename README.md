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
  potential error

`code`


GRLIB user guide https://www.gaisler.com/products/grlib/grlib.pdf
Cygwin environment info
http://www.es.ele.tue.nl/~ljozwiak/education/5JJ70p/blocks/1/cygwin.html
