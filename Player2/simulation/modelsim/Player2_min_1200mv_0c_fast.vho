-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/07/2019 20:13:40"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	readend : OUT std_logic;
	CLK : IN std_logic;
	PS2C : INOUT std_logic;
	PS2D : INOUT std_logic;
	MoveY : OUT std_logic;
	MoveX : OUT std_logic;
	SY : OUT std_logic;
	SX : OUT std_logic;
	LeftClick : OUT std_logic;
	RightClick : OUT std_logic;
	LED : OUT std_logic_vector(23 DOWNTO 16)
	);
END Main;

-- Design Ports Information
-- readend	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoveY	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoveX	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SY	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeftClick	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RightClick	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[23]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[20]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[19]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[18]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[17]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[16]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2C	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2D	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_readend : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MoveY : std_logic;
SIGNAL ww_MoveX : std_logic;
SIGNAL ww_SY : std_logic;
SIGNAL ww_SX : std_logic;
SIGNAL ww_LeftClick : std_logic;
SIGNAL ww_RightClick : std_logic;
SIGNAL ww_LED : std_logic_vector(23 DOWNTO 16);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PS2C~output_o\ : std_logic;
SIGNAL \PS2D~output_o\ : std_logic;
SIGNAL \readend~output_o\ : std_logic;
SIGNAL \MoveY~output_o\ : std_logic;
SIGNAL \MoveX~output_o\ : std_logic;
SIGNAL \SY~output_o\ : std_logic;
SIGNAL \SX~output_o\ : std_logic;
SIGNAL \LeftClick~output_o\ : std_logic;
SIGNAL \RightClick~output_o\ : std_logic;
SIGNAL \LED[23]~output_o\ : std_logic;
SIGNAL \LED[22]~output_o\ : std_logic;
SIGNAL \LED[21]~output_o\ : std_logic;
SIGNAL \LED[20]~output_o\ : std_logic;
SIGNAL \LED[19]~output_o\ : std_logic;
SIGNAL \LED[18]~output_o\ : std_logic;
SIGNAL \LED[17]~output_o\ : std_logic;
SIGNAL \LED[16]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PS2D~input_o\ : std_logic;
SIGNAL \inst|inst4|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst7|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst7|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst7|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst7|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst7|inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst7|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst7|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst7|inst5~combout\ : std_logic;
SIGNAL \inst|inst4|inst7|inst1~q\ : std_logic;
SIGNAL \inst|inst4|inst62~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst62~q\ : std_logic;
SIGNAL \PS2C~input_o\ : std_logic;
SIGNAL \inst|inst4|inst64~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst64~q\ : std_logic;
SIGNAL \inst|inst4|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst3|inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst3|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst3|inst5~combout\ : std_logic;
SIGNAL \inst|inst4|inst3|inst1~q\ : std_logic;
SIGNAL \inst|inst4|inst52~q\ : std_logic;
SIGNAL \inst|inst4|inst8|data[1]~2_combout\ : std_logic;
SIGNAL \inst|inst4|inst25~0_combout\ : std_logic;
SIGNAL \inst|inst9|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|data_next[0]~3_combout\ : std_logic;
SIGNAL \inst|inst4|inst56~q\ : std_logic;
SIGNAL \inst|inst4|inst67~0_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|data[1]~2_combout\ : std_logic;
SIGNAL \inst|inst4|inst~1_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|data_next[1]~2_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|data_next[2]~5_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst4|bit_cnt|data_next[3]~4_combout\ : std_logic;
SIGNAL \inst|inst4|inst75~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst79~0_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[0]~13_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data_next[1]~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~30_combout\ : std_logic;
SIGNAL \inst|inst4|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~29_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~31_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~32_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[0]~14\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~15_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[1]~16\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[2]~17_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[2]~18\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[3]~19_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[3]~20\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[4]~21_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[4]~22\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[5]~23_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[5]~24\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[6]~25_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[6]~26\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[7]~27_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[7]~28\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[8]~33_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[8]~34\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[9]~35_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[9]~36\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[10]~37_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[10]~38\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[11]~39_combout\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[11]~40\ : std_logic;
SIGNAL \inst|inst4|Timer_reg|data[12]~41_combout\ : std_logic;
SIGNAL \inst|inst4|inst63|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst63|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst63|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|inst4|inst8|data[1]~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst8|data[0]~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst66~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst2~combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst18~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst18~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst4|inst44~2_combout\ : std_logic;
SIGNAL \inst|inst4|inst44~3_combout\ : std_logic;
SIGNAL \inst|inst4|inst44~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst44~4_combout\ : std_logic;
SIGNAL \inst|inst4|inst34|data[0]~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst50~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst50~q\ : std_logic;
SIGNAL \inst|inst1|inst51~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst51~q\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst31|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst16~2_combout\ : std_logic;
SIGNAL \inst|inst4|inst31|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst31|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst31|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst16~1_combout\ : std_logic;
SIGNAL \inst|inst11|data[0]~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst57~0_combout\ : std_logic;
SIGNAL \inst|packet_byte_reg|data[1]~0_combout\ : std_logic;
SIGNAL \inst|packet_byte_reg|data[0]~1_combout\ : std_logic;
SIGNAL \inst|inst66|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst17|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|inst50~feeder_combout\ : std_logic;
SIGNAL \inst6|inst50~q\ : std_logic;
SIGNAL \inst6|inst51~q\ : std_logic;
SIGNAL \inst6|inst57~combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[10]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[9]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[8]~feeder_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[12]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[15]~feeder_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[21]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg53|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[20]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg53|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[16]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg53|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[17]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[19]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg53|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|ps2_word_reg|inst5|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst21|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|bit_cnt|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst15|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|inst8|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|mouse_data_reg|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst17|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst17|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst11|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg53|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst4|Timer_reg|data\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|inst4|inst34|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst23|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg52|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst9|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst13|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|packet_byte_reg|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst19|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|inst31|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst9|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst7|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|ps2_word_reg|inst11|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst4|inst9|ALT_INV_inst4~0_combout\ : std_logic;

BEGIN

readend <= ww_readend;
ww_CLK <= CLK;
MoveY <= ww_MoveY;
MoveX <= ww_MoveX;
SY <= ww_SY;
SX <= ww_SX;
LeftClick <= ww_LeftClick;
RightClick <= ww_RightClick;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|inst4|inst9|ALT_INV_inst4~0_combout\ <= NOT \inst|inst4|inst9|inst4~0_combout\;

-- Location: IOOBUF_X41_Y11_N2
\PS2C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst9|ALT_INV_inst4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PS2C~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\PS2D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ps2_word_reg|inst23|data\(0),
	oe => \inst|inst4|inst17~q\,
	devoe => ww_devoe,
	o => \PS2D~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\readend~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst57~combout\,
	devoe => ww_devoe,
	o => \readend~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\MoveY~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \MoveY~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\MoveX~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \MoveX~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\SY~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(21),
	devoe => ww_devoe,
	o => \SY~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\SX~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(20),
	devoe => ww_devoe,
	o => \SX~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\LeftClick~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(16),
	devoe => ww_devoe,
	o => \LeftClick~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\RightClick~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(17),
	devoe => ww_devoe,
	o => \RightClick~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \LED[23]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \LED[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(21),
	devoe => ww_devoe,
	o => \LED[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LED[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(20),
	devoe => ww_devoe,
	o => \LED[20]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LED[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(19),
	devoe => ww_devoe,
	o => \LED[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LED[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(18),
	devoe => ww_devoe,
	o => \LED[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(17),
	devoe => ww_devoe,
	o => \LED[17]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mouse_data_reg|data\(16),
	devoe => ww_devoe,
	o => \LED[16]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y12_N22
\PS2D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2D,
	o => \PS2D~input_o\);

-- Location: FF_X30_Y14_N23
\inst|inst4|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS2D~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst7|inst~q\);

-- Location: LCCOMB_X30_Y14_N2
\inst|inst4|inst7|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|inst2|inst~0_combout\ = (!\inst|inst4|inst7|inst2|inst~q\ & (\inst|inst4|inst7|inst~q\ $ (!\PS2D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst7|inst~q\,
	datab => \PS2D~input_o\,
	datac => \inst|inst4|inst7|inst2|inst~q\,
	combout => \inst|inst4|inst7|inst2|inst~0_combout\);

-- Location: FF_X30_Y14_N3
\inst|inst4|inst7|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst7|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst7|inst2|inst~q\);

-- Location: LCCOMB_X30_Y14_N12
\inst|inst4|inst7|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|inst3|inst~0_combout\ = (\inst|inst4|inst7|inst~q\ & (\PS2D~input_o\ & (\inst|inst4|inst7|inst3|inst~q\ $ (\inst|inst4|inst7|inst2|inst~q\)))) # (!\inst|inst4|inst7|inst~q\ & (!\PS2D~input_o\ & (\inst|inst4|inst7|inst3|inst~q\ $ 
-- (\inst|inst4|inst7|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst7|inst~q\,
	datab => \PS2D~input_o\,
	datac => \inst|inst4|inst7|inst3|inst~q\,
	datad => \inst|inst4|inst7|inst2|inst~q\,
	combout => \inst|inst4|inst7|inst3|inst~0_combout\);

-- Location: FF_X30_Y14_N13
\inst|inst4|inst7|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst7|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst7|inst3|inst~q\);

-- Location: LCCOMB_X30_Y14_N26
\inst|inst4|inst7|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|inst6~combout\ = \inst|inst4|inst7|inst~q\ $ (\PS2D~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst7|inst~q\,
	datac => \PS2D~input_o\,
	combout => \inst|inst4|inst7|inst6~combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst|inst4|inst7|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|inst4|inst~0_combout\ = (!\inst|inst4|inst7|inst6~combout\ & (\inst|inst4|inst7|inst4|inst~q\ $ (((\inst|inst4|inst7|inst2|inst~q\ & \inst|inst4|inst7|inst3|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst7|inst6~combout\,
	datab => \inst|inst4|inst7|inst2|inst~q\,
	datac => \inst|inst4|inst7|inst4|inst~q\,
	datad => \inst|inst4|inst7|inst3|inst~q\,
	combout => \inst|inst4|inst7|inst4|inst~0_combout\);

-- Location: FF_X30_Y14_N29
\inst|inst4|inst7|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst7|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst7|inst4|inst~q\);

-- Location: LCCOMB_X30_Y14_N16
\inst|inst4|inst7|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst7|inst5~combout\ = (\inst|inst4|inst7|inst3|inst~q\ & (\inst|inst4|inst7|inst2|inst~q\ & \inst|inst4|inst7|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst7|inst3|inst~q\,
	datab => \inst|inst4|inst7|inst2|inst~q\,
	datad => \inst|inst4|inst7|inst4|inst~q\,
	combout => \inst|inst4|inst7|inst5~combout\);

-- Location: FF_X30_Y14_N17
\inst|inst4|inst7|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|inst7|inst~q\,
	sload => VCC,
	ena => \inst|inst4|inst7|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst7|inst1~q\);

-- Location: LCCOMB_X29_Y14_N22
\inst|inst4|inst62~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst62~feeder_combout\ = \inst|inst4|inst7|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst7|inst1~q\,
	combout => \inst|inst4|inst62~feeder_combout\);

-- Location: FF_X29_Y14_N23
\inst|inst4|inst62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst62~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst62~q\);

-- Location: IOIBUF_X41_Y11_N1
\PS2C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2C,
	o => \PS2C~input_o\);

-- Location: LCCOMB_X35_Y14_N8
\inst|inst4|inst64~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst64~feeder_combout\ = \PS2C~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2C~input_o\,
	combout => \inst|inst4|inst64~feeder_combout\);

-- Location: FF_X35_Y14_N9
\inst|inst4|inst64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst64~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst64~q\);

-- Location: LCCOMB_X31_Y14_N26
\inst|inst4|inst3|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst~feeder_combout\ = \inst|inst4|inst64~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst64~q\,
	combout => \inst|inst4|inst3|inst~feeder_combout\);

-- Location: FF_X31_Y14_N27
\inst|inst4|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst3|inst~q\);

-- Location: LCCOMB_X31_Y14_N30
\inst|inst4|inst3|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst6~combout\ = \inst|inst4|inst3|inst~q\ $ (\inst|inst4|inst64~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst3|inst~q\,
	datad => \inst|inst4|inst64~q\,
	combout => \inst|inst4|inst3|inst6~combout\);

-- Location: LCCOMB_X31_Y14_N2
\inst|inst4|inst3|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst2|inst~0_combout\ = (!\inst|inst4|inst3|inst2|inst~q\ & (\inst|inst4|inst3|inst~q\ $ (!\inst|inst4|inst64~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|inst~q\,
	datac => \inst|inst4|inst3|inst2|inst~q\,
	datad => \inst|inst4|inst64~q\,
	combout => \inst|inst4|inst3|inst2|inst~0_combout\);

-- Location: FF_X31_Y14_N3
\inst|inst4|inst3|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst3|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst3|inst2|inst~q\);

-- Location: LCCOMB_X31_Y14_N28
\inst|inst4|inst3|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst3|inst~0_combout\ = (\inst|inst4|inst3|inst~q\ & (\inst|inst4|inst64~q\ & (\inst|inst4|inst3|inst2|inst~q\ $ (\inst|inst4|inst3|inst3|inst~q\)))) # (!\inst|inst4|inst3|inst~q\ & (!\inst|inst4|inst64~q\ & 
-- (\inst|inst4|inst3|inst2|inst~q\ $ (\inst|inst4|inst3|inst3|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|inst~q\,
	datab => \inst|inst4|inst3|inst2|inst~q\,
	datac => \inst|inst4|inst3|inst3|inst~q\,
	datad => \inst|inst4|inst64~q\,
	combout => \inst|inst4|inst3|inst3|inst~0_combout\);

-- Location: FF_X31_Y14_N29
\inst|inst4|inst3|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst3|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst3|inst3|inst~q\);

-- Location: LCCOMB_X31_Y14_N12
\inst|inst4|inst3|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst4|inst~0_combout\ = (!\inst|inst4|inst3|inst6~combout\ & (\inst|inst4|inst3|inst4|inst~q\ $ (((\inst|inst4|inst3|inst2|inst~q\ & \inst|inst4|inst3|inst3|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|inst6~combout\,
	datab => \inst|inst4|inst3|inst2|inst~q\,
	datac => \inst|inst4|inst3|inst4|inst~q\,
	datad => \inst|inst4|inst3|inst3|inst~q\,
	combout => \inst|inst4|inst3|inst4|inst~0_combout\);

-- Location: FF_X31_Y14_N13
\inst|inst4|inst3|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst3|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst3|inst4|inst~q\);

-- Location: LCCOMB_X31_Y14_N20
\inst|inst4|inst3|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3|inst5~combout\ = (\inst|inst4|inst3|inst4|inst~q\ & (\inst|inst4|inst3|inst2|inst~q\ & \inst|inst4|inst3|inst3|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst3|inst4|inst~q\,
	datab => \inst|inst4|inst3|inst2|inst~q\,
	datad => \inst|inst4|inst3|inst3|inst~q\,
	combout => \inst|inst4|inst3|inst5~combout\);

-- Location: FF_X31_Y14_N21
\inst|inst4|inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|inst3|inst~q\,
	sload => VCC,
	ena => \inst|inst4|inst3|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst3|inst1~q\);

-- Location: FF_X27_Y14_N7
\inst|inst4|inst52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|inst3|inst1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst52~q\);

-- Location: LCCOMB_X27_Y14_N26
\inst|inst4|inst8|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst8|data[1]~2_combout\ = (\inst|inst4|inst8|data[1]~0_combout\ & (!\inst|inst4|inst25~0_combout\ & (\inst|inst4|inst8|data\(0) $ (\inst|inst4|inst8|data\(1))))) # (!\inst|inst4|inst8|data[1]~0_combout\ & (((\inst|inst4|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(0),
	datab => \inst|inst4|inst25~0_combout\,
	datac => \inst|inst4|inst8|data\(1),
	datad => \inst|inst4|inst8|data[1]~0_combout\,
	combout => \inst|inst4|inst8|data[1]~2_combout\);

-- Location: FF_X27_Y14_N27
\inst|inst4|inst8|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst8|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst8|data\(1));

-- Location: LCCOMB_X28_Y14_N8
\inst|inst4|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst25~0_combout\ = (\inst|inst4|inst8|data\(0) & (\inst|inst4|inst62~q\ & (\inst|inst4|inst52~q\ & \inst|inst4|inst8|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(0),
	datab => \inst|inst4|inst62~q\,
	datac => \inst|inst4|inst52~q\,
	datad => \inst|inst4|inst8|data\(1),
	combout => \inst|inst4|inst25~0_combout\);

-- Location: LCCOMB_X27_Y14_N28
\inst|inst9|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|data[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|inst9|data[0]~feeder_combout\);

-- Location: FF_X27_Y14_N29
\inst|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst9|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9|data\(0));

-- Location: LCCOMB_X28_Y14_N6
\inst|inst4|bit_cnt|data_next[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|data_next[0]~3_combout\ = (!\inst|inst4|bit_cnt|data\(0) & ((\inst|inst4|inst8|data\(0)) # ((\inst|inst9|data\(0)) # (\inst|inst4|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(0),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|bit_cnt|data\(0),
	datad => \inst|inst4|inst8|data\(1),
	combout => \inst|inst4|bit_cnt|data_next[0]~3_combout\);

-- Location: FF_X28_Y14_N27
\inst|inst4|inst56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|inst52~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst56~q\);

-- Location: LCCOMB_X28_Y14_N26
\inst|inst4|inst67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst67~0_combout\ = (!\inst|inst4|inst52~q\ & \inst|inst4|inst56~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst52~q\,
	datac => \inst|inst4|inst56~q\,
	combout => \inst|inst4|inst67~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst|inst4|bit_cnt|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|data[1]~2_combout\ = (!\inst|inst4|inst8|data\(0) & ((\inst|inst4|inst8|data\(1) & ((\inst|inst4|inst67~0_combout\))) # (!\inst|inst4|inst8|data\(1) & (!\inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(1),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst67~0_combout\,
	datad => \inst|inst4|inst8|data\(0),
	combout => \inst|inst4|bit_cnt|data[1]~2_combout\);

-- Location: FF_X28_Y14_N7
\inst|inst4|bit_cnt|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|bit_cnt|data_next[0]~3_combout\,
	ena => \inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|bit_cnt|data\(0));

-- Location: LCCOMB_X27_Y14_N24
\inst|inst4|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~1_combout\ = (!\inst|inst9|data\(0) & (!\inst|inst4|inst8|data\(1) & !\inst|inst4|inst8|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst8|data\(1),
	datad => \inst|inst4|inst8|data\(0),
	combout => \inst|inst4|inst~1_combout\);

-- Location: LCCOMB_X28_Y14_N0
\inst|inst4|bit_cnt|data_next[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|data_next[1]~2_combout\ = (!\inst|inst4|inst~1_combout\ & (\inst|inst4|bit_cnt|data\(0) $ (\inst|inst4|bit_cnt|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|bit_cnt|data\(0),
	datac => \inst|inst4|bit_cnt|data\(1),
	datad => \inst|inst4|inst~1_combout\,
	combout => \inst|inst4|bit_cnt|data_next[1]~2_combout\);

-- Location: FF_X28_Y14_N1
\inst|inst4|bit_cnt|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|bit_cnt|data_next[1]~2_combout\,
	ena => \inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|bit_cnt|data\(1));

-- Location: LCCOMB_X28_Y14_N22
\inst|inst4|bit_cnt|data_next[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|data_next[2]~5_combout\ = (!\inst|inst4|inst~1_combout\ & (\inst|inst4|bit_cnt|data\(2) $ (((\inst|inst4|bit_cnt|data\(0) & \inst|inst4|bit_cnt|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|bit_cnt|data\(0),
	datab => \inst|inst4|inst~1_combout\,
	datac => \inst|inst4|bit_cnt|data\(2),
	datad => \inst|inst4|bit_cnt|data\(1),
	combout => \inst|inst4|bit_cnt|data_next[2]~5_combout\);

-- Location: FF_X28_Y14_N23
\inst|inst4|bit_cnt|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|bit_cnt|data_next[2]~5_combout\,
	ena => \inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|bit_cnt|data\(2));

-- Location: LCCOMB_X28_Y14_N10
\inst|inst4|bit_cnt|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|Add0~0_combout\ = (\inst|inst4|bit_cnt|data\(0) & \inst|inst4|bit_cnt|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|bit_cnt|data\(0),
	datad => \inst|inst4|bit_cnt|data\(1),
	combout => \inst|inst4|bit_cnt|Add0~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|inst4|bit_cnt|data_next[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|bit_cnt|data_next[3]~4_combout\ = (!\inst|inst4|inst~1_combout\ & (\inst|inst4|bit_cnt|data\(3) $ (((\inst|inst4|bit_cnt|data\(2) & \inst|inst4|bit_cnt|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|bit_cnt|data\(2),
	datab => \inst|inst4|inst~1_combout\,
	datac => \inst|inst4|bit_cnt|data\(3),
	datad => \inst|inst4|bit_cnt|Add0~0_combout\,
	combout => \inst|inst4|bit_cnt|data_next[3]~4_combout\);

-- Location: FF_X28_Y14_N21
\inst|inst4|bit_cnt|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|bit_cnt|data_next[3]~4_combout\,
	ena => \inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|bit_cnt|data\(3));

-- Location: LCCOMB_X27_Y14_N22
\inst|inst4|inst75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst75~0_combout\ = (\inst|inst4|inst8|data\(1) & (!\inst|inst4|inst8|data\(0) & (\inst|inst4|bit_cnt|data\(1) & \inst|inst4|bit_cnt|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(1),
	datab => \inst|inst4|inst8|data\(0),
	datac => \inst|inst4|bit_cnt|data\(1),
	datad => \inst|inst4|bit_cnt|data\(0),
	combout => \inst|inst4|inst75~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\inst|inst4|inst79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst79~0_combout\ = (\inst|inst4|inst~1_combout\) # ((\inst|inst4|bit_cnt|data\(3) & (\inst|inst4|inst75~0_combout\ & !\inst|inst4|bit_cnt|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|bit_cnt|data\(3),
	datab => \inst|inst4|inst~1_combout\,
	datac => \inst|inst4|inst75~0_combout\,
	datad => \inst|inst4|bit_cnt|data\(2),
	combout => \inst|inst4|inst79~0_combout\);

-- Location: LCCOMB_X26_Y14_N2
\inst|inst4|Timer_reg|data[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[0]~13_combout\ = \inst|inst4|Timer_reg|data\(0) $ (VCC)
-- \inst|inst4|Timer_reg|data[0]~14\ = CARRY(\inst|inst4|Timer_reg|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(0),
	datad => VCC,
	combout => \inst|inst4|Timer_reg|data[0]~13_combout\,
	cout => \inst|inst4|Timer_reg|data[0]~14\);

-- Location: LCCOMB_X27_Y14_N6
\inst|inst4|Timer_reg|data_next[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data_next[1]~0_combout\ = (!\inst|inst4|inst8|data\(1) & (!\inst|inst4|inst8|data\(0) & ((!\inst|inst4|inst52~q\) # (!\inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(1),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst52~q\,
	datad => \inst|inst4|inst8|data\(0),
	combout => \inst|inst4|Timer_reg|data_next[1]~0_combout\);

-- Location: LCCOMB_X27_Y14_N2
\inst|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~0_combout\ = (!\inst|inst4|inst8|data\(1) & !\inst|inst4|inst8|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst8|data\(1),
	datad => \inst|inst4|inst8|data\(0),
	combout => \inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X27_Y14_N8
\inst|inst4|Timer_reg|data[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[1]~30_combout\ = (\inst|inst4|inst52~q\ & (\inst|inst9|data\(0) & ((\inst|inst4|Timer_reg|data\(12)) # (\inst|inst4|Timer_reg|data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst52~q\,
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|Timer_reg|data\(12),
	datad => \inst|inst4|Timer_reg|data\(11),
	combout => \inst|inst4|Timer_reg|data[1]~30_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst|inst4|inst44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~0_combout\ = (\inst|inst4|Timer_reg|data\(5) & (\inst|inst4|Timer_reg|data\(7) & (\inst|inst4|Timer_reg|data\(9) & \inst|inst4|Timer_reg|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(5),
	datab => \inst|inst4|Timer_reg|data\(7),
	datac => \inst|inst4|Timer_reg|data\(9),
	datad => \inst|inst4|Timer_reg|data\(4),
	combout => \inst|inst4|inst44~0_combout\);

-- Location: LCCOMB_X27_Y14_N10
\inst|inst4|Timer_reg|data[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[1]~29_combout\ = (\inst|inst4|Timer_reg|data\(6) & ((\inst|inst4|inst44~0_combout\) # ((\inst|inst4|Timer_reg|data\(8) & \inst|inst4|Timer_reg|data\(9))))) # (!\inst|inst4|Timer_reg|data\(6) & (\inst|inst4|Timer_reg|data\(8) & 
-- (\inst|inst4|Timer_reg|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(6),
	datab => \inst|inst4|Timer_reg|data\(8),
	datac => \inst|inst4|Timer_reg|data\(9),
	datad => \inst|inst4|inst44~0_combout\,
	combout => \inst|inst4|Timer_reg|data[1]~29_combout\);

-- Location: LCCOMB_X27_Y14_N30
\inst|inst4|Timer_reg|data[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[1]~31_combout\ = (\inst|inst4|Timer_reg|data[1]~30_combout\ & ((\inst|inst4|Timer_reg|data\(12)) # ((\inst|inst4|Timer_reg|data\(10)) # (\inst|inst4|Timer_reg|data[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(12),
	datab => \inst|inst4|Timer_reg|data\(10),
	datac => \inst|inst4|Timer_reg|data[1]~30_combout\,
	datad => \inst|inst4|Timer_reg|data[1]~29_combout\,
	combout => \inst|inst4|Timer_reg|data[1]~31_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst|inst4|Timer_reg|data[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[1]~32_combout\ = (\inst|inst4|inst~0_combout\ & (((\inst|inst4|inst9|inst4~0_combout\ & \inst|inst4|inst63|LessThan1~2_combout\)) # (!\inst|inst4|Timer_reg|data[1]~31_combout\))) # (!\inst|inst4|inst~0_combout\ & 
-- (\inst|inst4|inst9|inst4~0_combout\ & ((\inst|inst4|inst63|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst~0_combout\,
	datab => \inst|inst4|inst9|inst4~0_combout\,
	datac => \inst|inst4|Timer_reg|data[1]~31_combout\,
	datad => \inst|inst4|inst63|LessThan1~2_combout\,
	combout => \inst|inst4|Timer_reg|data[1]~32_combout\);

-- Location: FF_X26_Y14_N3
\inst|inst4|Timer_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[0]~13_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(0));

-- Location: LCCOMB_X26_Y14_N4
\inst|inst4|Timer_reg|data[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[1]~15_combout\ = (\inst|inst4|Timer_reg|data\(1) & (!\inst|inst4|Timer_reg|data[0]~14\)) # (!\inst|inst4|Timer_reg|data\(1) & ((\inst|inst4|Timer_reg|data[0]~14\) # (GND)))
-- \inst|inst4|Timer_reg|data[1]~16\ = CARRY((!\inst|inst4|Timer_reg|data[0]~14\) # (!\inst|inst4|Timer_reg|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(1),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[0]~14\,
	combout => \inst|inst4|Timer_reg|data[1]~15_combout\,
	cout => \inst|inst4|Timer_reg|data[1]~16\);

-- Location: FF_X26_Y14_N5
\inst|inst4|Timer_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[1]~15_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(1));

-- Location: LCCOMB_X26_Y14_N6
\inst|inst4|Timer_reg|data[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[2]~17_combout\ = (\inst|inst4|Timer_reg|data\(2) & (\inst|inst4|Timer_reg|data[1]~16\ $ (GND))) # (!\inst|inst4|Timer_reg|data\(2) & (!\inst|inst4|Timer_reg|data[1]~16\ & VCC))
-- \inst|inst4|Timer_reg|data[2]~18\ = CARRY((\inst|inst4|Timer_reg|data\(2) & !\inst|inst4|Timer_reg|data[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(2),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[1]~16\,
	combout => \inst|inst4|Timer_reg|data[2]~17_combout\,
	cout => \inst|inst4|Timer_reg|data[2]~18\);

-- Location: FF_X26_Y14_N7
\inst|inst4|Timer_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[2]~17_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(2));

-- Location: LCCOMB_X26_Y14_N8
\inst|inst4|Timer_reg|data[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[3]~19_combout\ = (\inst|inst4|Timer_reg|data\(3) & (!\inst|inst4|Timer_reg|data[2]~18\)) # (!\inst|inst4|Timer_reg|data\(3) & ((\inst|inst4|Timer_reg|data[2]~18\) # (GND)))
-- \inst|inst4|Timer_reg|data[3]~20\ = CARRY((!\inst|inst4|Timer_reg|data[2]~18\) # (!\inst|inst4|Timer_reg|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(3),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[2]~18\,
	combout => \inst|inst4|Timer_reg|data[3]~19_combout\,
	cout => \inst|inst4|Timer_reg|data[3]~20\);

-- Location: FF_X26_Y14_N9
\inst|inst4|Timer_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[3]~19_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(3));

-- Location: LCCOMB_X26_Y14_N10
\inst|inst4|Timer_reg|data[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[4]~21_combout\ = (\inst|inst4|Timer_reg|data\(4) & (\inst|inst4|Timer_reg|data[3]~20\ $ (GND))) # (!\inst|inst4|Timer_reg|data\(4) & (!\inst|inst4|Timer_reg|data[3]~20\ & VCC))
-- \inst|inst4|Timer_reg|data[4]~22\ = CARRY((\inst|inst4|Timer_reg|data\(4) & !\inst|inst4|Timer_reg|data[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(4),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[3]~20\,
	combout => \inst|inst4|Timer_reg|data[4]~21_combout\,
	cout => \inst|inst4|Timer_reg|data[4]~22\);

-- Location: FF_X26_Y14_N11
\inst|inst4|Timer_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[4]~21_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(4));

-- Location: LCCOMB_X26_Y14_N12
\inst|inst4|Timer_reg|data[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[5]~23_combout\ = (\inst|inst4|Timer_reg|data\(5) & (!\inst|inst4|Timer_reg|data[4]~22\)) # (!\inst|inst4|Timer_reg|data\(5) & ((\inst|inst4|Timer_reg|data[4]~22\) # (GND)))
-- \inst|inst4|Timer_reg|data[5]~24\ = CARRY((!\inst|inst4|Timer_reg|data[4]~22\) # (!\inst|inst4|Timer_reg|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(5),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[4]~22\,
	combout => \inst|inst4|Timer_reg|data[5]~23_combout\,
	cout => \inst|inst4|Timer_reg|data[5]~24\);

-- Location: FF_X26_Y14_N13
\inst|inst4|Timer_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[5]~23_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(5));

-- Location: LCCOMB_X26_Y14_N14
\inst|inst4|Timer_reg|data[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[6]~25_combout\ = (\inst|inst4|Timer_reg|data\(6) & (\inst|inst4|Timer_reg|data[5]~24\ $ (GND))) # (!\inst|inst4|Timer_reg|data\(6) & (!\inst|inst4|Timer_reg|data[5]~24\ & VCC))
-- \inst|inst4|Timer_reg|data[6]~26\ = CARRY((\inst|inst4|Timer_reg|data\(6) & !\inst|inst4|Timer_reg|data[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(6),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[5]~24\,
	combout => \inst|inst4|Timer_reg|data[6]~25_combout\,
	cout => \inst|inst4|Timer_reg|data[6]~26\);

-- Location: FF_X26_Y14_N15
\inst|inst4|Timer_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[6]~25_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(6));

-- Location: LCCOMB_X26_Y14_N16
\inst|inst4|Timer_reg|data[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[7]~27_combout\ = (\inst|inst4|Timer_reg|data\(7) & (!\inst|inst4|Timer_reg|data[6]~26\)) # (!\inst|inst4|Timer_reg|data\(7) & ((\inst|inst4|Timer_reg|data[6]~26\) # (GND)))
-- \inst|inst4|Timer_reg|data[7]~28\ = CARRY((!\inst|inst4|Timer_reg|data[6]~26\) # (!\inst|inst4|Timer_reg|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(7),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[6]~26\,
	combout => \inst|inst4|Timer_reg|data[7]~27_combout\,
	cout => \inst|inst4|Timer_reg|data[7]~28\);

-- Location: FF_X26_Y14_N17
\inst|inst4|Timer_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[7]~27_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(7));

-- Location: LCCOMB_X26_Y14_N18
\inst|inst4|Timer_reg|data[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[8]~33_combout\ = (\inst|inst4|Timer_reg|data\(8) & (\inst|inst4|Timer_reg|data[7]~28\ $ (GND))) # (!\inst|inst4|Timer_reg|data\(8) & (!\inst|inst4|Timer_reg|data[7]~28\ & VCC))
-- \inst|inst4|Timer_reg|data[8]~34\ = CARRY((\inst|inst4|Timer_reg|data\(8) & !\inst|inst4|Timer_reg|data[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(8),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[7]~28\,
	combout => \inst|inst4|Timer_reg|data[8]~33_combout\,
	cout => \inst|inst4|Timer_reg|data[8]~34\);

-- Location: FF_X26_Y14_N19
\inst|inst4|Timer_reg|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[8]~33_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(8));

-- Location: LCCOMB_X26_Y14_N20
\inst|inst4|Timer_reg|data[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[9]~35_combout\ = (\inst|inst4|Timer_reg|data\(9) & (!\inst|inst4|Timer_reg|data[8]~34\)) # (!\inst|inst4|Timer_reg|data\(9) & ((\inst|inst4|Timer_reg|data[8]~34\) # (GND)))
-- \inst|inst4|Timer_reg|data[9]~36\ = CARRY((!\inst|inst4|Timer_reg|data[8]~34\) # (!\inst|inst4|Timer_reg|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(9),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[8]~34\,
	combout => \inst|inst4|Timer_reg|data[9]~35_combout\,
	cout => \inst|inst4|Timer_reg|data[9]~36\);

-- Location: FF_X26_Y14_N21
\inst|inst4|Timer_reg|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[9]~35_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(9));

-- Location: LCCOMB_X26_Y14_N22
\inst|inst4|Timer_reg|data[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[10]~37_combout\ = (\inst|inst4|Timer_reg|data\(10) & (\inst|inst4|Timer_reg|data[9]~36\ $ (GND))) # (!\inst|inst4|Timer_reg|data\(10) & (!\inst|inst4|Timer_reg|data[9]~36\ & VCC))
-- \inst|inst4|Timer_reg|data[10]~38\ = CARRY((\inst|inst4|Timer_reg|data\(10) & !\inst|inst4|Timer_reg|data[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(10),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[9]~36\,
	combout => \inst|inst4|Timer_reg|data[10]~37_combout\,
	cout => \inst|inst4|Timer_reg|data[10]~38\);

-- Location: FF_X26_Y14_N23
\inst|inst4|Timer_reg|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[10]~37_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(10));

-- Location: LCCOMB_X26_Y14_N24
\inst|inst4|Timer_reg|data[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[11]~39_combout\ = (\inst|inst4|Timer_reg|data\(11) & (!\inst|inst4|Timer_reg|data[10]~38\)) # (!\inst|inst4|Timer_reg|data\(11) & ((\inst|inst4|Timer_reg|data[10]~38\) # (GND)))
-- \inst|inst4|Timer_reg|data[11]~40\ = CARRY((!\inst|inst4|Timer_reg|data[10]~38\) # (!\inst|inst4|Timer_reg|data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Timer_reg|data\(11),
	datad => VCC,
	cin => \inst|inst4|Timer_reg|data[10]~38\,
	combout => \inst|inst4|Timer_reg|data[11]~39_combout\,
	cout => \inst|inst4|Timer_reg|data[11]~40\);

-- Location: FF_X26_Y14_N25
\inst|inst4|Timer_reg|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[11]~39_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(11));

-- Location: LCCOMB_X26_Y14_N26
\inst|inst4|Timer_reg|data[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|Timer_reg|data[12]~41_combout\ = \inst|inst4|Timer_reg|data\(12) $ (!\inst|inst4|Timer_reg|data[11]~40\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(12),
	cin => \inst|inst4|Timer_reg|data[11]~40\,
	combout => \inst|inst4|Timer_reg|data[12]~41_combout\);

-- Location: FF_X26_Y14_N27
\inst|inst4|Timer_reg|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|Timer_reg|data[12]~41_combout\,
	sclr => \inst|inst4|Timer_reg|data_next[1]~0_combout\,
	ena => \inst|inst4|Timer_reg|data[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|Timer_reg|data\(12));

-- Location: LCCOMB_X27_Y14_N20
\inst|inst4|inst63|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst63|LessThan1~0_combout\ = (!\inst|inst4|Timer_reg|data\(6) & (!\inst|inst4|Timer_reg|data\(5) & (!\inst|inst4|Timer_reg|data\(4) & !\inst|inst4|Timer_reg|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(6),
	datab => \inst|inst4|Timer_reg|data\(5),
	datac => \inst|inst4|Timer_reg|data\(4),
	datad => \inst|inst4|Timer_reg|data\(3),
	combout => \inst|inst4|inst63|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst|inst4|inst63|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst63|LessThan1~1_combout\ = (\inst|inst4|Timer_reg|data\(7) & (\inst|inst4|Timer_reg|data\(8) & (\inst|inst4|Timer_reg|data\(9) & !\inst|inst4|inst63|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(7),
	datab => \inst|inst4|Timer_reg|data\(8),
	datac => \inst|inst4|Timer_reg|data\(9),
	datad => \inst|inst4|inst63|LessThan1~0_combout\,
	combout => \inst|inst4|inst63|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst|inst4|inst63|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst63|LessThan1~2_combout\ = ((!\inst|inst4|Timer_reg|data\(11) & (!\inst|inst4|Timer_reg|data\(10) & !\inst|inst4|inst63|LessThan1~1_combout\))) # (!\inst|inst4|Timer_reg|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(12),
	datab => \inst|inst4|Timer_reg|data\(11),
	datac => \inst|inst4|Timer_reg|data\(10),
	datad => \inst|inst4|inst63|LessThan1~1_combout\,
	combout => \inst|inst4|inst63|LessThan1~2_combout\);

-- Location: LCCOMB_X27_Y14_N16
\inst|inst4|inst8|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst8|data[1]~0_combout\ = \inst|inst4|inst25~0_combout\ $ (((\inst|inst4|inst79~0_combout\) # ((!\inst|inst4|inst63|LessThan1~2_combout\ & \inst|inst4|inst9|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst25~0_combout\,
	datab => \inst|inst4|inst79~0_combout\,
	datac => \inst|inst4|inst63|LessThan1~2_combout\,
	datad => \inst|inst4|inst9|inst4~0_combout\,
	combout => \inst|inst4|inst8|data[1]~0_combout\);

-- Location: LCCOMB_X27_Y14_N12
\inst|inst4|inst8|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst8|data[0]~1_combout\ = \inst|inst4|inst8|data\(0) $ (\inst|inst4|inst8|data[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst8|data\(0),
	datad => \inst|inst4|inst8|data[1]~0_combout\,
	combout => \inst|inst4|inst8|data[0]~1_combout\);

-- Location: FF_X27_Y14_N13
\inst|inst4|inst8|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst8|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst8|data\(0));

-- Location: LCCOMB_X27_Y14_N0
\inst|inst4|inst9|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst9|inst4~0_combout\ = (\inst|inst4|inst8|data\(0) & !\inst|inst4|inst8|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(0),
	datac => \inst|inst4|inst8|data\(1),
	combout => \inst|inst4|inst9|inst4~0_combout\);

-- Location: LCCOMB_X28_Y14_N24
\inst|inst4|inst66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst66~0_combout\ = (\inst|inst4|inst67~0_combout\ & (!\inst|inst4|inst8|data\(0) & ((\inst|inst4|inst8|data\(1)) # (\inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(1),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst67~0_combout\,
	datad => \inst|inst4|inst8|data\(0),
	combout => \inst|inst4|inst66~0_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst|inst4|ps2_word_reg|inst4|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\ = (\inst|inst4|inst62~q\) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst62~q\,
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst|inst4|ps2_word_reg|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst2~combout\ = (!\inst|inst4|inst8|data\(0) & ((\inst|inst4|inst67~0_combout\) # ((!\inst|inst9|data\(0) & !\inst|inst4|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(0),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst67~0_combout\,
	datad => \inst|inst4|inst8|data\(1),
	combout => \inst|inst4|ps2_word_reg|inst2~combout\);

-- Location: FF_X29_Y14_N27
\inst|inst4|ps2_word_reg|inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst|data\(0));

-- Location: LCCOMB_X29_Y14_N4
\inst|inst4|ps2_word_reg|inst6|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst|data\(0) & \inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|ps2_word_reg|inst|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N5
\inst|inst4|ps2_word_reg|inst5|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst5|data\(0));

-- Location: LCCOMB_X29_Y14_N20
\inst|inst4|ps2_word_reg|inst8|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst5|data\(0)) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|ps2_word_reg|inst5|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N21
\inst|inst4|ps2_word_reg|inst7|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst7|data\(0));

-- Location: LCCOMB_X29_Y14_N6
\inst|inst4|ps2_word_reg|inst10|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst7|data\(0)) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|ps2_word_reg|inst7|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N7
\inst|inst4|ps2_word_reg|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst9|data\(0));

-- Location: LCCOMB_X29_Y14_N12
\inst|inst4|ps2_word_reg|inst12|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst9|data\(0)) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|ps2_word_reg|inst9|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N13
\inst|inst4|ps2_word_reg|inst11|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst11|data\(0));

-- Location: LCCOMB_X29_Y14_N10
\inst|inst4|ps2_word_reg|inst14|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst11|data\(0)) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|ps2_word_reg|inst11|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N11
\inst|inst4|ps2_word_reg|inst13|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst13|data\(0));

-- Location: LCCOMB_X29_Y14_N16
\inst|inst4|ps2_word_reg|inst16|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst13|data\(0) & \inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|ps2_word_reg|inst13|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N17
\inst|inst4|ps2_word_reg|inst15|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst15|data\(0));

-- Location: LCCOMB_X29_Y14_N18
\inst|inst4|ps2_word_reg|inst18|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst15|data\(0)) # (!\inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|ps2_word_reg|inst15|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N19
\inst|inst4|ps2_word_reg|inst17|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst17|data\(0));

-- Location: LCCOMB_X29_Y14_N14
\inst|inst4|ps2_word_reg|inst20|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst17|data\(0) & \inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|ps2_word_reg|inst17|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N15
\inst|inst4|ps2_word_reg|inst19|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst19|data\(0));

-- Location: LCCOMB_X29_Y14_N28
\inst|inst4|ps2_word_reg|inst22|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst19|data\(0) & \inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|ps2_word_reg|inst19|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N29
\inst|inst4|ps2_word_reg|inst21|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst21|data\(0));

-- Location: LCCOMB_X29_Y14_N8
\inst|inst4|ps2_word_reg|inst24|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\ = (\inst|inst4|ps2_word_reg|inst21|data\(0) & \inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|ps2_word_reg|inst21|data\(0),
	datad => \inst|inst4|inst66~0_combout\,
	combout => \inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\);

-- Location: FF_X29_Y14_N9
\inst|inst4|ps2_word_reg|inst23|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\,
	ena => \inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|ps2_word_reg|inst23|data\(0));

-- Location: LCCOMB_X28_Y14_N12
\inst|inst4|inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst18~0_combout\ = ((!\inst|inst4|bit_cnt|data\(2) & !\inst|inst4|bit_cnt|data\(1))) # (!\inst|inst4|bit_cnt|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|bit_cnt|data\(3),
	datac => \inst|inst4|bit_cnt|data\(2),
	datad => \inst|inst4|bit_cnt|data\(1),
	combout => \inst|inst4|inst18~0_combout\);

-- Location: LCCOMB_X27_Y14_N14
\inst|inst4|inst18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst18~1_combout\ = (\inst|inst4|inst8|data\(1) & (!\inst|inst4|inst8|data\(0) & ((\inst|inst4|inst18~0_combout\)))) # (!\inst|inst4|inst8|data\(1) & (\inst|inst4|inst8|data\(0) & (!\inst|inst4|inst63|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst8|data\(1),
	datab => \inst|inst4|inst8|data\(0),
	datac => \inst|inst4|inst63|LessThan1~2_combout\,
	datad => \inst|inst4|inst18~0_combout\,
	combout => \inst|inst4|inst18~1_combout\);

-- Location: FF_X27_Y14_N15
\inst|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst17~q\);

-- Location: LCCOMB_X24_Y14_N22
\inst|inst4|inst44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~2_combout\ = (!\inst|inst4|Timer_reg|data\(8) & (!\inst|inst4|Timer_reg|data\(3) & (!\inst|inst4|Timer_reg|data\(1) & !\inst|inst4|Timer_reg|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(8),
	datab => \inst|inst4|Timer_reg|data\(3),
	datac => \inst|inst4|Timer_reg|data\(1),
	datad => \inst|inst4|Timer_reg|data\(2),
	combout => \inst|inst4|inst44~2_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst|inst4|inst44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~3_combout\ = (!\inst|inst4|Timer_reg|data\(0) & (\inst|inst9|data\(0) & (\inst|inst4|inst44~2_combout\ & \inst|inst4|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(0),
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst44~2_combout\,
	datad => \inst|inst4|inst~0_combout\,
	combout => \inst|inst4|inst44~3_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|inst4|inst44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~1_combout\ = (\inst|inst4|Timer_reg|data\(6) & (\inst|inst4|Timer_reg|data\(11) & \inst|inst4|inst44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(6),
	datab => \inst|inst4|Timer_reg|data\(11),
	datad => \inst|inst4|inst44~0_combout\,
	combout => \inst|inst4|inst44~1_combout\);

-- Location: LCCOMB_X24_Y14_N10
\inst|inst4|inst44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~4_combout\ = (!\inst|inst4|Timer_reg|data\(10) & (!\inst|inst4|Timer_reg|data\(12) & (\inst|inst4|inst44~3_combout\ & \inst|inst4|inst44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Timer_reg|data\(10),
	datab => \inst|inst4|Timer_reg|data\(12),
	datac => \inst|inst4|inst44~3_combout\,
	datad => \inst|inst4|inst44~1_combout\,
	combout => \inst|inst4|inst44~4_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst|inst4|inst34|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst34|data[0]~0_combout\ = (\inst|inst4|inst44~4_combout\) # ((\inst|inst4|inst34|data\(0) & ((!\inst|inst9|data\(0)) # (!\inst|inst4|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst~0_combout\,
	datab => \inst|inst9|data\(0),
	datac => \inst|inst4|inst34|data\(0),
	datad => \inst|inst4|inst44~4_combout\,
	combout => \inst|inst4|inst34|data[0]~0_combout\);

-- Location: FF_X24_Y14_N25
\inst|inst4|inst34|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst34|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst34|data\(0));

-- Location: LCCOMB_X24_Y14_N2
\inst|inst1|inst50~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst50~feeder_combout\ = \inst|inst4|inst34|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst34|data\(0),
	combout => \inst|inst1|inst50~feeder_combout\);

-- Location: FF_X24_Y14_N3
\inst|inst1|inst50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|inst50~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst50~q\);

-- Location: LCCOMB_X24_Y14_N12
\inst|inst1|inst51~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst51~feeder_combout\ = \inst|inst1|inst50~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst50~q\,
	combout => \inst|inst1|inst51~feeder_combout\);

-- Location: FF_X24_Y14_N13
\inst|inst1|inst51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|inst51~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst51~q\);

-- Location: FF_X24_Y14_N21
\inst|inst4|inst31|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|ps2_word_reg|inst21|data\(0),
	sload => VCC,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(0));

-- Location: FF_X24_Y14_N17
\inst|inst4|inst31|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|ps2_word_reg|inst19|data\(0),
	sload => VCC,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(1));

-- Location: LCCOMB_X24_Y14_N26
\inst|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (!\inst|inst1|inst51~q\ & (\inst|inst1|inst50~q\ & (!\inst|inst4|inst31|data\(0) & \inst|inst4|inst31|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst51~q\,
	datab => \inst|inst1|inst50~q\,
	datac => \inst|inst4|inst31|data\(0),
	datad => \inst|inst4|inst31|data\(1),
	combout => \inst|inst16~0_combout\);

-- Location: FF_X24_Y14_N15
\inst|inst4|inst31|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|ps2_word_reg|inst9|data\(0),
	sload => VCC,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(6));

-- Location: LCCOMB_X24_Y14_N0
\inst|inst4|inst31|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31|data[7]~feeder_combout\ = \inst|inst4|ps2_word_reg|inst7|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|ps2_word_reg|inst7|data\(0),
	combout => \inst|inst4|inst31|data[7]~feeder_combout\);

-- Location: FF_X24_Y14_N1
\inst|inst4|inst31|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst31|data[7]~feeder_combout\,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(7));

-- Location: LCCOMB_X24_Y14_N14
\inst|inst16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~2_combout\ = (\inst|inst4|inst31|data\(6) & \inst|inst4|inst31|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst31|data\(6),
	datad => \inst|inst4|inst31|data\(7),
	combout => \inst|inst16~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst|inst4|inst31|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31|data[4]~feeder_combout\ = \inst|inst4|ps2_word_reg|inst13|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|ps2_word_reg|inst13|data\(0),
	combout => \inst|inst4|inst31|data[4]~feeder_combout\);

-- Location: FF_X24_Y14_N7
\inst|inst4|inst31|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst31|data[4]~feeder_combout\,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(4));

-- Location: LCCOMB_X24_Y14_N28
\inst|inst4|inst31|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31|data[3]~feeder_combout\ = \inst|inst4|ps2_word_reg|inst15|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|ps2_word_reg|inst15|data\(0),
	combout => \inst|inst4|inst31|data[3]~feeder_combout\);

-- Location: FF_X24_Y14_N29
\inst|inst4|inst31|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst31|data[3]~feeder_combout\,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(3));

-- Location: FF_X24_Y14_N9
\inst|inst4|inst31|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst4|ps2_word_reg|inst11|data\(0),
	sload => VCC,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(5));

-- Location: LCCOMB_X24_Y14_N18
\inst|inst4|inst31|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31|data[2]~feeder_combout\ = \inst|inst4|ps2_word_reg|inst17|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|ps2_word_reg|inst17|data\(0),
	combout => \inst|inst4|inst31|data[2]~feeder_combout\);

-- Location: FF_X24_Y14_N19
\inst|inst4|inst31|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|inst31|data[2]~feeder_combout\,
	ena => \inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst31|data\(2));

-- Location: LCCOMB_X24_Y14_N8
\inst|inst16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~1_combout\ = (\inst|inst4|inst31|data\(4) & (\inst|inst4|inst31|data\(3) & (\inst|inst4|inst31|data\(5) & !\inst|inst4|inst31|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst31|data\(4),
	datab => \inst|inst4|inst31|data\(3),
	datac => \inst|inst4|inst31|data\(5),
	datad => \inst|inst4|inst31|data\(2),
	combout => \inst|inst16~1_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst|inst11|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|data[0]~0_combout\ = (\inst|inst11|data\(0)) # ((\inst|inst16~0_combout\ & (\inst|inst16~2_combout\ & \inst|inst16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~0_combout\,
	datab => \inst|inst16~2_combout\,
	datac => \inst|inst11|data\(0),
	datad => \inst|inst16~1_combout\,
	combout => \inst|inst11|data[0]~0_combout\);

-- Location: FF_X24_Y14_N31
\inst|inst11|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|data\(0));

-- Location: LCCOMB_X24_Y14_N16
\inst|inst1|inst57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst57~0_combout\ = (!\inst|inst1|inst51~q\ & \inst|inst1|inst50~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst51~q\,
	datad => \inst|inst1|inst50~q\,
	combout => \inst|inst1|inst57~0_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst|packet_byte_reg|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|packet_byte_reg|data[1]~0_combout\ = (\inst|packet_byte_reg|data\(1) & (((!\inst|packet_byte_reg|data\(0))))) # (!\inst|packet_byte_reg|data\(1) & (\inst|inst11|data\(0) & (\inst|inst1|inst57~0_combout\ & \inst|packet_byte_reg|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|data\(0),
	datab => \inst|inst1|inst57~0_combout\,
	datac => \inst|packet_byte_reg|data\(1),
	datad => \inst|packet_byte_reg|data\(0),
	combout => \inst|packet_byte_reg|data[1]~0_combout\);

-- Location: FF_X24_Y13_N19
\inst|packet_byte_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|packet_byte_reg|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|packet_byte_reg|data\(1));

-- Location: LCCOMB_X24_Y13_N0
\inst|packet_byte_reg|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|packet_byte_reg|data[0]~1_combout\ = (\inst|packet_byte_reg|data\(0) & (!\inst|packet_byte_reg|data\(1) & ((!\inst|inst1|inst57~0_combout\) # (!\inst|inst11|data\(0))))) # (!\inst|packet_byte_reg|data\(0) & (\inst|inst11|data\(0) & 
-- (\inst|inst1|inst57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|data\(0),
	datab => \inst|inst1|inst57~0_combout\,
	datac => \inst|packet_byte_reg|data\(0),
	datad => \inst|packet_byte_reg|data\(1),
	combout => \inst|packet_byte_reg|data[0]~1_combout\);

-- Location: FF_X24_Y13_N1
\inst|packet_byte_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|packet_byte_reg|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|packet_byte_reg|data\(0));

-- Location: LCCOMB_X24_Y13_N22
\inst|inst66|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst66|Equal0~0_combout\ = (\inst|packet_byte_reg|data\(0) & \inst|packet_byte_reg|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|packet_byte_reg|data\(0),
	datad => \inst|packet_byte_reg|data\(1),
	combout => \inst|inst66|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst|inst17|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst17|data[0]~feeder_combout\ = \inst|inst66|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst66|Equal0~0_combout\,
	combout => \inst|inst17|data[0]~feeder_combout\);

-- Location: FF_X24_Y13_N29
\inst|inst17|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst17|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17|data\(0));

-- Location: LCCOMB_X24_Y13_N4
\inst6|inst50~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst50~feeder_combout\ = \inst|inst17|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst17|data\(0),
	combout => \inst6|inst50~feeder_combout\);

-- Location: FF_X24_Y13_N5
\inst6|inst50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst50~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst50~q\);

-- Location: FF_X24_Y13_N3
\inst6|inst51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst50~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst51~q\);

-- Location: LCCOMB_X24_Y13_N2
\inst6|inst57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst57~combout\ = (\inst6|inst50~q\ & !\inst6|inst51~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst50~q\,
	datac => \inst6|inst51~q\,
	combout => \inst6|inst57~combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst|mouse_data_int_reg52|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[4]~feeder_combout\ = \inst|inst4|inst31|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst31|data\(4),
	combout => \inst|mouse_data_int_reg52|data[4]~feeder_combout\);

-- Location: FF_X23_Y14_N31
\inst|mouse_data_int_reg52|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[4]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(4));

-- Location: LCCOMB_X23_Y13_N10
\inst|mouse_data_reg|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[4]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|mouse_data_int_reg52|data\(4),
	combout => \inst|mouse_data_reg|data[4]~feeder_combout\);

-- Location: FF_X23_Y13_N11
\inst|mouse_data_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[4]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(4));

-- Location: LCCOMB_X23_Y13_N8
\inst|mouse_data_int_reg52|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[5]~feeder_combout\ = \inst|inst4|inst31|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst31|data\(5),
	combout => \inst|mouse_data_int_reg52|data[5]~feeder_combout\);

-- Location: FF_X23_Y13_N9
\inst|mouse_data_int_reg52|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[5]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(5));

-- Location: FF_X23_Y13_N25
\inst|mouse_data_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(5),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(5));

-- Location: LCCOMB_X23_Y14_N26
\inst|mouse_data_int_reg52|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[7]~feeder_combout\ = \inst|inst4|inst31|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst31|data\(7),
	combout => \inst|mouse_data_int_reg52|data[7]~feeder_combout\);

-- Location: FF_X23_Y14_N27
\inst|mouse_data_int_reg52|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[7]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(7));

-- Location: FF_X23_Y13_N1
\inst|mouse_data_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(7),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(7));

-- Location: LCCOMB_X23_Y14_N8
\inst|mouse_data_int_reg52|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[6]~feeder_combout\ = \inst|inst4|inst31|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst31|data\(6),
	combout => \inst|mouse_data_int_reg52|data[6]~feeder_combout\);

-- Location: FF_X23_Y14_N9
\inst|mouse_data_int_reg52|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[6]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(6));

-- Location: LCCOMB_X23_Y13_N2
\inst|mouse_data_reg|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[6]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(6),
	combout => \inst|mouse_data_reg|data[6]~feeder_combout\);

-- Location: FF_X23_Y13_N3
\inst|mouse_data_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[6]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(6));

-- Location: LCCOMB_X23_Y13_N0
\inst2|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst|mouse_data_reg|data\(4)) # ((\inst|mouse_data_reg|data\(5)) # ((\inst|mouse_data_reg|data\(7)) # (\inst|mouse_data_reg|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_data_reg|data\(4),
	datab => \inst|mouse_data_reg|data\(5),
	datac => \inst|mouse_data_reg|data\(7),
	datad => \inst|mouse_data_reg|data\(6),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst|mouse_data_int_reg52|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[2]~feeder_combout\ = \inst|inst4|inst31|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst31|data\(2),
	combout => \inst|mouse_data_int_reg52|data[2]~feeder_combout\);

-- Location: FF_X23_Y14_N3
\inst|mouse_data_int_reg52|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[2]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(2));

-- Location: FF_X23_Y14_N11
\inst|mouse_data_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(2),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(2));

-- Location: LCCOMB_X23_Y14_N22
\inst|mouse_data_int_reg52|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[0]~feeder_combout\ = \inst|inst4|inst31|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst31|data\(0),
	combout => \inst|mouse_data_int_reg52|data[0]~feeder_combout\);

-- Location: FF_X23_Y14_N23
\inst|mouse_data_int_reg52|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[0]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(0));

-- Location: FF_X23_Y14_N25
\inst|mouse_data_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(0),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(0));

-- Location: LCCOMB_X23_Y14_N4
\inst|mouse_data_int_reg52|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[3]~feeder_combout\ = \inst|inst4|inst31|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst31|data\(3),
	combout => \inst|mouse_data_int_reg52|data[3]~feeder_combout\);

-- Location: FF_X23_Y14_N5
\inst|mouse_data_int_reg52|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[3]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(3));

-- Location: FF_X23_Y14_N17
\inst|mouse_data_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(3),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(3));

-- Location: LCCOMB_X23_Y14_N6
\inst|mouse_data_int_reg52|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[1]~feeder_combout\ = \inst|inst4|inst31|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|inst31|data\(1),
	combout => \inst|mouse_data_int_reg52|data[1]~feeder_combout\);

-- Location: FF_X23_Y14_N7
\inst|mouse_data_int_reg52|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[1]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(1));

-- Location: LCCOMB_X23_Y14_N28
\inst|mouse_data_reg|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[1]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(1),
	combout => \inst|mouse_data_reg|data[1]~feeder_combout\);

-- Location: FF_X23_Y14_N29
\inst|mouse_data_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[1]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(1));

-- Location: LCCOMB_X23_Y14_N16
\inst2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst|mouse_data_reg|data\(2)) # ((\inst|mouse_data_reg|data\(0)) # ((\inst|mouse_data_reg|data\(3)) # (\inst|mouse_data_reg|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_data_reg|data\(2),
	datab => \inst|mouse_data_reg|data\(0),
	datac => \inst|mouse_data_reg|data\(3),
	datad => \inst|mouse_data_reg|data\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst2|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|LessThan0~1_combout\) # (\inst2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst|mouse_data_int_reg|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[2]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(2),
	combout => \inst|mouse_data_int_reg|data[2]~feeder_combout\);

-- Location: FF_X22_Y14_N21
\inst|mouse_data_int_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[2]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(2));

-- Location: LCCOMB_X22_Y14_N22
\inst|mouse_data_reg|data[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[10]~feeder_combout\ = \inst|mouse_data_int_reg|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(2),
	combout => \inst|mouse_data_reg|data[10]~feeder_combout\);

-- Location: FF_X22_Y14_N23
\inst|mouse_data_reg|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[10]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(10));

-- Location: LCCOMB_X23_Y14_N0
\inst|mouse_data_int_reg|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[1]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(1),
	combout => \inst|mouse_data_int_reg|data[1]~feeder_combout\);

-- Location: FF_X23_Y14_N1
\inst|mouse_data_int_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[1]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(1));

-- Location: LCCOMB_X23_Y14_N18
\inst|mouse_data_reg|data[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[9]~feeder_combout\ = \inst|mouse_data_int_reg|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(1),
	combout => \inst|mouse_data_reg|data[9]~feeder_combout\);

-- Location: FF_X23_Y14_N19
\inst|mouse_data_reg|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[9]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(9));

-- Location: LCCOMB_X22_Y14_N26
\inst|mouse_data_int_reg|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[3]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(3),
	combout => \inst|mouse_data_int_reg|data[3]~feeder_combout\);

-- Location: FF_X22_Y14_N27
\inst|mouse_data_int_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[3]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(3));

-- Location: FF_X22_Y14_N29
\inst|mouse_data_reg|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg|data\(3),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(11));

-- Location: LCCOMB_X22_Y14_N18
\inst|mouse_data_int_reg|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[0]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(0),
	combout => \inst|mouse_data_int_reg|data[0]~feeder_combout\);

-- Location: FF_X22_Y14_N19
\inst|mouse_data_int_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[0]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(0));

-- Location: LCCOMB_X22_Y14_N12
\inst|mouse_data_reg|data[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[8]~feeder_combout\ = \inst|mouse_data_int_reg|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(0),
	combout => \inst|mouse_data_reg|data[8]~feeder_combout\);

-- Location: FF_X22_Y14_N13
\inst|mouse_data_reg|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[8]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(8));

-- Location: LCCOMB_X22_Y14_N28
\inst5|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst|mouse_data_reg|data\(10)) # ((\inst|mouse_data_reg|data\(9)) # ((\inst|mouse_data_reg|data\(11)) # (\inst|mouse_data_reg|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_data_reg|data\(10),
	datab => \inst|mouse_data_reg|data\(9),
	datac => \inst|mouse_data_reg|data\(11),
	datad => \inst|mouse_data_reg|data\(8),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst|mouse_data_int_reg|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[6]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(6),
	combout => \inst|mouse_data_int_reg|data[6]~feeder_combout\);

-- Location: FF_X23_Y13_N23
\inst|mouse_data_int_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[6]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(6));

-- Location: FF_X23_Y13_N13
\inst|mouse_data_reg|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg|data\(6),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(14));

-- Location: LCCOMB_X23_Y13_N6
\inst|mouse_data_int_reg|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[4]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|mouse_data_int_reg52|data\(4),
	combout => \inst|mouse_data_int_reg|data[4]~feeder_combout\);

-- Location: FF_X23_Y13_N7
\inst|mouse_data_int_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[4]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(4));

-- Location: LCCOMB_X22_Y13_N24
\inst|mouse_data_reg|data[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[12]~feeder_combout\ = \inst|mouse_data_int_reg|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(4),
	combout => \inst|mouse_data_reg|data[12]~feeder_combout\);

-- Location: FF_X22_Y13_N25
\inst|mouse_data_reg|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[12]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(12));

-- Location: FF_X23_Y13_N31
\inst|mouse_data_int_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(5),
	sload => VCC,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(5));

-- Location: FF_X23_Y13_N5
\inst|mouse_data_reg|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg|data\(5),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(13));

-- Location: LCCOMB_X23_Y13_N20
\inst|mouse_data_int_reg|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[7]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(7),
	combout => \inst|mouse_data_int_reg|data[7]~feeder_combout\);

-- Location: FF_X23_Y13_N21
\inst|mouse_data_int_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[7]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(7));

-- Location: LCCOMB_X23_Y13_N16
\inst|mouse_data_reg|data[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[15]~feeder_combout\ = \inst|mouse_data_int_reg|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(7),
	combout => \inst|mouse_data_reg|data[15]~feeder_combout\);

-- Location: FF_X23_Y13_N17
\inst|mouse_data_reg|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[15]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(15));

-- Location: LCCOMB_X23_Y13_N4
\inst5|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst|mouse_data_reg|data\(14)) # ((\inst|mouse_data_reg|data\(12)) # ((\inst|mouse_data_reg|data\(13)) # (\inst|mouse_data_reg|data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_data_reg|data\(14),
	datab => \inst|mouse_data_reg|data\(12),
	datac => \inst|mouse_data_reg|data\(13),
	datad => \inst|mouse_data_reg|data\(15),
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst5|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst5|LessThan0~0_combout\) # (\inst5|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan0~0_combout\,
	datad => \inst5|LessThan0~1_combout\,
	combout => \inst5|LessThan0~2_combout\);

-- Location: FF_X23_Y13_N19
\inst|mouse_data_int_reg53|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg|data\(5),
	sload => VCC,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(5));

-- Location: LCCOMB_X23_Y13_N14
\inst|mouse_data_reg|data[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[21]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(5),
	combout => \inst|mouse_data_reg|data[21]~feeder_combout\);

-- Location: FF_X23_Y13_N15
\inst|mouse_data_reg|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[21]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(21));

-- Location: LCCOMB_X23_Y13_N28
\inst|mouse_data_int_reg53|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg53|data[4]~feeder_combout\ = \inst|mouse_data_int_reg|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(4),
	combout => \inst|mouse_data_int_reg53|data[4]~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst|mouse_data_int_reg53|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg53|data[4]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(4));

-- Location: LCCOMB_X23_Y13_N26
\inst|mouse_data_reg|data[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[20]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(4),
	combout => \inst|mouse_data_reg|data[20]~feeder_combout\);

-- Location: FF_X23_Y13_N27
\inst|mouse_data_reg|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[20]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(20));

-- Location: LCCOMB_X22_Y14_N24
\inst|mouse_data_int_reg53|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg53|data[0]~feeder_combout\ = \inst|mouse_data_int_reg|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(0),
	combout => \inst|mouse_data_int_reg53|data[0]~feeder_combout\);

-- Location: FF_X22_Y14_N25
\inst|mouse_data_int_reg53|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg53|data[0]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(0));

-- Location: LCCOMB_X23_Y14_N14
\inst|mouse_data_reg|data[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[16]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(0),
	combout => \inst|mouse_data_reg|data[16]~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst|mouse_data_reg|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[16]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(16));

-- Location: LCCOMB_X23_Y14_N12
\inst|mouse_data_int_reg53|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg53|data[1]~feeder_combout\ = \inst|mouse_data_int_reg|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(1),
	combout => \inst|mouse_data_int_reg53|data[1]~feeder_combout\);

-- Location: FF_X23_Y14_N13
\inst|mouse_data_int_reg53|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg53|data[1]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(1));

-- Location: LCCOMB_X23_Y14_N20
\inst|mouse_data_reg|data[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[17]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(1),
	combout => \inst|mouse_data_reg|data[17]~feeder_combout\);

-- Location: FF_X23_Y14_N21
\inst|mouse_data_reg|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[17]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(17));

-- Location: FF_X22_Y14_N11
\inst|mouse_data_int_reg53|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg|data\(3),
	sload => VCC,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(3));

-- Location: LCCOMB_X22_Y14_N2
\inst|mouse_data_reg|data[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[19]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(3),
	combout => \inst|mouse_data_reg|data[19]~feeder_combout\);

-- Location: FF_X22_Y14_N3
\inst|mouse_data_reg|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[19]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(19));

-- Location: LCCOMB_X22_Y14_N8
\inst|mouse_data_int_reg53|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg53|data[2]~feeder_combout\ = \inst|mouse_data_int_reg|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(2),
	combout => \inst|mouse_data_int_reg53|data[2]~feeder_combout\);

-- Location: FF_X22_Y14_N9
\inst|mouse_data_int_reg53|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg53|data[2]~feeder_combout\,
	ena => \inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(2));

-- Location: FF_X22_Y14_N1
\inst|mouse_data_reg|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg53|data\(2),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(18));

ww_readend <= \readend~output_o\;

ww_MoveY <= \MoveY~output_o\;

ww_MoveX <= \MoveX~output_o\;

ww_SY <= \SY~output_o\;

ww_SX <= \SX~output_o\;

ww_LeftClick <= \LeftClick~output_o\;

ww_RightClick <= \RightClick~output_o\;

ww_LED(23) <= \LED[23]~output_o\;

ww_LED(22) <= \LED[22]~output_o\;

ww_LED(21) <= \LED[21]~output_o\;

ww_LED(20) <= \LED[20]~output_o\;

ww_LED(19) <= \LED[19]~output_o\;

ww_LED(18) <= \LED[18]~output_o\;

ww_LED(17) <= \LED[17]~output_o\;

ww_LED(16) <= \LED[16]~output_o\;

PS2C <= \PS2C~output_o\;

PS2D <= \PS2D~output_o\;
END structure;


