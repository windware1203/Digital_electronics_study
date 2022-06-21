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

-- DATE "06/21/2022 00:03:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cardNum IS
    PORT (
	nowC : IN IEEE.NUMERIC_STD.unsigned(0 TO 2);
	clk : IN std_logic;
	nextC : OUT IEEE.NUMERIC_STD.unsigned(0 TO 2)
	);
END cardNum;

-- Design Ports Information
-- nowC[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nowC[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nowC[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextC[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextC[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextC[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cardNum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nowC : std_logic_vector(0 TO 2);
SIGNAL ww_clk : std_logic;
SIGNAL ww_nextC : std_logic_vector(0 TO 2);
SIGNAL \nowC[2]~input_o\ : std_logic;
SIGNAL \nowC[1]~input_o\ : std_logic;
SIGNAL \nowC[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \nextC[2]~output_o\ : std_logic;
SIGNAL \nextC[1]~output_o\ : std_logic;
SIGNAL \nextC[0]~output_o\ : std_logic;
SIGNAL \nextC[2]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;

BEGIN

ww_nowC <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(nowC);
ww_clk <= clk;
nextC <= IEEE.NUMERIC_STD.UNSIGNED(ww_nextC);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y15_N9
\nextC[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextC[2]~3_combout\,
	devoe => ww_devoe,
	o => \nextC[2]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\nextC[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \nextC[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\nextC[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_combout\,
	devoe => ww_devoe,
	o => \nextC[0]~output_o\);

-- Location: LCCOMB_X27_Y16_N20
\nextC[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nextC[2]~3_combout\ = \nextC[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nextC[2]~3_combout\,
	combout => \nextC[2]~3_combout\);

-- Location: LCCOMB_X27_Y16_N24
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Add0~0_combout\ $ (!\nextC[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \nextC[2]~3_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \Add0~1_combout\ $ (((\Add0~0_combout\ & !\nextC[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~1_combout\,
	datad => \nextC[2]~3_combout\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X31_Y31_N1
\nowC[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nowC(2),
	o => \nowC[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\nowC[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nowC(1),
	o => \nowC[1]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\nowC[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nowC(0),
	o => \nowC[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_nextC(2) <= \nextC[2]~output_o\;

ww_nextC(1) <= \nextC[1]~output_o\;

ww_nextC(0) <= \nextC[0]~output_o\;
END structure;


