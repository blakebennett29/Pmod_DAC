// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Feb 15 20:19:41 2026
// Host        : Blakes-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/School/SeniorProject/DAC_pmod_testing/DAC_pmod_testing.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19536)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
