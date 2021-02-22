set XTECHLIBS {tech/unisim tech/virtex }
set GRLIB {../..}
set LIBADD {}
set FILEADD {}
set EXTRALIBS {}
set DIRADD {}
set TECHLIBS {unisim virtex}
set XLIBSKIP {core1553bbc core1553brm core1553brt gr1553 corePCIF tmtc openchip hynix cypress ihp gsi fmf spansion dummy}
set GRLIB_LEON3_VERSION {3}
set XDIRSKIP {b1553 pci/pcif leon2 leon2ft crypto satcan pci leon3ft ambatest ddr leon4v0 l2cache gr1553b iommu ascs slink pwm ge_1000baseX b1553/core pci/pcif/core leon2/core leon2ft/core crypto/core satcan/core pci/core leon3ft/core ambatest/core ddr/core leon4v0/core l2cache/core gr1553b/core iommu/core ascs/core slink/core pwm/core ge_1000baseX/core core1553bbc core1553brm core1553brt gr1553 corePCIF tmtc openchip hynix cypress ihp gsi fmf spansion core1553bbc core1553brm core1553brt gr1553 corePCIF tmtc openchip hynix cypress ihp gsi fmf spansion dummy}
set GRLIB_CONFIG {dummy}
set XFILESKIP {grcan.vhd adapters/sgmii.vhd *_core1553bbc.vhd *_core1553brm.vhd *_core1553brt.vhd *_gr1553.vhd *_corePCIF.vhd *_tmtc.vhd *_openchip.vhd *_hynix.vhd *_cypress.vhd *_ihp.vhd *_gsi.vhd *_fmf.vhd *_spansion.vhd dummy MCB.vhd GTXE1.vhd GTP_DUAL.vhd GTPA1_DUAL.vhd GT11.vhd GT11CLK.vhd GT11CLK_MGT.vhd GT11_CUSTOM.vhd GT11_DUAL.vhd GTX_DUAL.vhd GTHE1_QUAD.vhd PCIE_2_0.vhd PCIE_A1.vhd}
set VHDLANOPT {}
set VLOGANOPT {}
set SVLOGANOPT {}
set VCOM {vcom -quiet -explicit -93}
set VHDLOPT {}
set VLOG {vlog -quiet }
set SVLOG {vlog -quiet }
set SYNPVHDL {add_file -vhdl -lib}
set DCVHDL {analyze -f VHDL -library}
set RTLCVHDL {read_hdl -vhdl -lib}
set XSTVHDL {elaborate -ifmt vhdl -work_lib}
set VIVADOVHDL {read_vhdl -library}
set ACOM {acom -quiet -work}
set NCVHDL {ncvhdl -nowarn DLCPTH -NOVITALCHECK -linedebug -v93 -nocopyright -work}
set XDCLIBSKIP {apa proasic3 axcelerator ec fusion unisim virtex virtex5 secureip unimacro altera altera_mf stratixii eclipsee cycloneiii stratixiii synplify simprim stratixiv proasic3e proasic3l smartfusion2 rtg4 polarfire corePCIF dummy}
set XDCDIRSKIP {apa proasic3 axcelerator ec fusion unisim virtex virtex5 secureip unimacro altera altera_mf stratixii eclipsee cycloneiii stratixiii synplify simprim stratixiv proasic3e proasic3l smartfusion2 rtg4 polarfire corePCIF pci/pcif dummy}
set DCSKIP {*_apa.vhd *_proasic3.vhd *_axcelerator.vhd *_ec.vhd *_fusion.vhd *_unisim.vhd *_virtex.vhd *_virtex5.vhd *_secureip.vhd *_unimacro.vhd *_altera.vhd *_altera_mf.vhd *_stratixii.vhd *_eclipsee.vhd *_cycloneiii.vhd *_stratixiii.vhd *_synplify.vhd *_simprim.vhd *_stratixiv.vhd *_proasic3e.vhd *_proasic3l.vhd *_smartfusion2.vhd *_rtg4.vhd *_polarfire.vhd *_corePCIF.vhd dummy}
set XSYNPLIBSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 dummy}
set XSYNPDIRSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 dummy}
set SYNPSKIP {snpsmul.vhd}
set XSTLIBSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 core1553bbc core1553brm core1553brt gr1553 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire altera_mf stratixii altera cycloneiii stratixiii ec corePCIF hynix micron cypress dware}
set XSTDIRSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire altera_mf stratixii altera cycloneiii stratixiii ec dware}
set XSTSKIP { b1553* pci_components* pcicore* snpsmul.vhd}
set VIVADOLIBSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 core1553bbc core1553brm core1553brt gr1553 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire altera_mf stratixii altera cycloneiii stratixiii ec corePCIF hynix micron cypress dware grdware}
set VIVADODIRSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire altera_mf stratixii altera cycloneiii stratixiii ec dware grdware}
set VIVADOSKIP { b1553* pci_components* pcicore* snpsmul.vhd clkgen_virtex.vhd memory_virtex.vhd simple_simprim.vhd unisim_VCOMP.vhd unisim_VITAL.vhd unisim_VPKG.vhd}
set GHDLI {ghdl -i}
set GHDLIOPT {--mb-comments}
set NCVLOG {ncvlog -nowarn DLCPTH -nocopyright -linedebug -work}
set SNPS_HOME {}
set TOP {leon3mp}
set SYNPVLOG {add_file -verilog}
set LIBEROLIBSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 ec altera_mf stratixii altera cycloneiii stratixiii unisim simprim unimacro virtex virtex5 proasic3 proasic3e proasic3l fusion smartfusion2 axcelerator rtg4 polarfire dummy}
set LIBERODIRSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 unisim simprim unimacro virtex virtex5 altera_mf stratixii altera cycloneiii stratixiii ec dummy}
set LIBEROSKIP {dummy}
set FMVHDL {read_vhdl -r -libname}
set FMVHDLOPT {}
set FMVLOG {read_verilog -r -libname}
set RTLCVLOG {read_hdl}
set XSTVLOG {elaborate -ifmt verilog -work_lib}
set SF2SIMLIB_RIVIERA {}
set PLANAHEAD_SIMSET {sim_1}
set PRECDIRSKIP {hynix micron cypress ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 dware}
set PRECLIBSKIP {hynix micron cypress ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 dware}
set PRECSKIP {dummy}
set ALOG {alog -quiet -work}
set QUARTUSLIBSKIP {hynix micron cypress ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 core1553bbc core1553brm core1553brt gr1553 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire unisim simprim unimacro virtex virtex5 ec corePCIF dware}
set QDIRSKIP {ihp25 sgb25vrh ut025crh virage rh_lib18t rh_lib18t_io2 rh_lib13t atc18 artisan umc18 virage90 tsmc90 dare nextreme atc18rha_cell smic13 tm65gplus st65lp st65gp cmos9sf nextreme2 gf65g saed32 apa apa3 axcelerator proasic3 proasic3e proasic3l fusion smartfusion2 rtg4 polarfire unisim simprim unimacro virtex virtex5 ec dware satcan leon2ft}
set QUARTUSSKIP {b1553* pci_components* pcicore* snpsmul.vhd}
set PART {xc3s1500}
set SPEED {-4}
set PACKAGE {fg456}
set ISPPACKAGE {}
set LIBERO_PACKAGE {}
set DESIGNER_PACKAGE {}
set MGCPACKAGE {fg456}
set ISPLIB {}
set TECHNOLOGY {Spartan3}
set DESIGNER_TECHNOLOGY {Spartan3}
set MGCTECHNOLOGY {Spartan3}
set LIBERO_DIE {}
set DESIGNER_VOLTAGE {}
set DESIGNER_TEMPR {}
set DESIGNER_VOLTRANGE {}
set DESIGNER_PINS {}
set DESIGNER_PARTR {}
set MANUFACTURER {Xilinx}
set MGCPART {3s1500fg456}
set ISETECH {Spartan3}
set QSF {../../boards/gr-xc3s-1500/leon3mp.qsf}
set VHDLOPTSYNFILES {}
set VHDLSYNFILES {config.vhd ahbrom.vhd vga_clkgen.vhd leon3mp.vhd}
set VHDLIPFILES {}
set UCF {leon3mp.ucf}
set GRLIB_SIMULATOR {ModelSim}
set SIMTOP {testbench}
set SIMINST {leon3mp}
set VHDLSIMFILES {testbench.vhd}
set PRECOPT {}
set SYNFREQ {60}
set ISE11TECH {Spartan3}
set NETLISTTECH {Spartan3}
set XSTOPT {}
set EFFORT {high}
set GRLIB_XIL_PN_Pack_Reg_Latches_into_IOBs {For Inputs and Outputs}
set QSF_APPEND {}
set GRLIB_XIL_PN_Simulator {Modelsim-SE VHDL}
set ISEMAPOPT {-timing}
set SYNPVLOGDEFS {}
set VERILOGSYNFILES {}
set VERILOGOPTSYNFILES {}
set VERILOGSIMFILES {}
set SDCFILE {default.sdc}
set SDC {}
set PDC {}
set FPPDC {}
set LIBERO_EXTRA_SDC {}
set LIBEROPRECOMPLIBDIR {smartfusion2}
set DCVLOG {analyze -f VERILOG -library}
set VIVADOVLOG {read_verilog -library}
set DESIGNER_LAYOUT_OPT {-timing_driven -incremental "OFF"}
set DESIGNER_RADEXP {}
set SDC_EXTRA {}
set PDC_EXTRA {}
set DESIGNER_PART {xc3s1500}
set DESIGNER_PACKAGE {}
set DESIGN {}
set DEVICE {xc3s1500-fg456-4}
set GRLIB_XIL_PlanAhead_Simulator {ModelSim}
set PROTOBOARD {}
set CONFIG_MIG_DDR2 {}
set UCF_PLANAHEAD {}
set PLANAHEAD_BITGEN {}
set GRLIB_XIL_PlanAhead_sim_verilog_define {}
set PLANAHEAD_SYNTH_STRATEGY {TimingWithIOBPacking}
set PLANAHEAD_IMPL_STRATEGY {ParHighEffort}
set GRLIB_XIL_Vivado_sim_verilog_define {}
set XDC_EARLY {}
set XDC {}
set XDC_LATE {}
set TCL {}
set VIVADO_UCF {}
set GRLIB_XIL_Vivado_Simulator {ModelSim}
set CONFIG_MIG_7SERIES {}
set VIVADO_MIG_AXI {}
set AXI_64 {}
set AXI_128 {}
set VIVADO_CROSSBAR_AXI {}
set VIVADO_INCL_DIRS {}
set CONFIG_GRETH_ENABLE {y}
set VIVADO_SYNTH_FLOW {Vivado Synthesis 2012}
set VIVADO_SYNTH_STRATEGY {Vivado Synthesis Defaults}
set VIVADO_IMPL_STRATEGY {Vivado Implementation Defaults}
set VIVADO_SIMSET {sim_1}
set GRLIB_XILINX_SOURCE_MGMT_MODE {}
set BOARD {gr-xc3s-1500}
set DESIGNER_RESTRICTPROBEPINS {1}
set DESIGNER_RTG4_SET_MITIGATION {unassigned}
set OS {Linux}
set ENHANCED_CONSTRAINT_FLOW {}
set AREA_OPT {no}
