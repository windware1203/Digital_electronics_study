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

-- DATE "06/20/2022 22:40:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	final IS
    PORT (
	\1\ : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name2 : IN std_logic;
	pin_name3 : IN std_logic;
	pin_name4 : IN std_logic;
	pin_name5 : IN std_logic;
	pin_name6 : IN std_logic;
	\2\ : OUT std_logic;
	\3\ : OUT std_logic;
	\4\ : OUT std_logic;
	\5\ : OUT std_logic;
	\6\ : OUT std_logic
	);
END final;

-- Design Ports Information
-- 1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 6	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_1\ : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL \ww_2\ : std_logic;
SIGNAL \ww_3\ : std_logic;
SIGNAL \ww_4\ : std_logic;
SIGNAL \ww_5\ : std_logic;
SIGNAL \ww_6\ : std_logic;
SIGNAL \1~output_o\ : std_logic;
SIGNAL \2~output_o\ : std_logic;
SIGNAL \3~output_o\ : std_logic;
SIGNAL \4~output_o\ : std_logic;
SIGNAL \5~output_o\ : std_logic;
SIGNAL \6~output_o\ : std_logic;
SIGNAL \pin_name6~input_o\ : std_logic;
SIGNAL \pin_name5~input_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \pin_name3~input_o\ : std_logic;
SIGNAL \pin_name4~input_o\ : std_logic;
SIGNAL \lfsr|outt\ : std_logic_vector(0 TO 5);

BEGIN

\1\ <= \ww_1\;
ww_pin_name1 <= pin_name1;
ww_pin_name2 <= pin_name2;
ww_pin_name3 <= pin_name3;
ww_pin_name4 <= pin_name4;
ww_pin_name5 <= pin_name5;
ww_pin_name6 <= pin_name6;
\2\ <= \ww_2\;
\3\ <= \ww_3\;
\4\ <= \ww_4\;
\5\ <= \ww_5\;
\6\ <= \ww_6\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr|outt\(0),
	devoe => ww_devoe,
	o => \1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name1~input_o\,
	devoe => ww_devoe,
	o => \2~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name2~input_o\,
	devoe => ww_devoe,
	o => \3~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name3~input_o\,
	devoe => ww_devoe,
	o => \4~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name4~input_o\,
	devoe => ww_devoe,
	o => \5~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_name5~input_o\,
	devoe => ww_devoe,
	o => \6~output_o\);

-- Location: IOIBUF_X20_Y0_N8
\pin_name6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name6,
	o => \pin_name6~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\pin_name5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name5,
	o => \pin_name5~input_o\);

-- Location: LCCOMB_X20_Y1_N8
\lfsr|outt[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr|outt\(0) = \pin_name6~input_o\ $ (\pin_name5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pin_name6~input_o\,
	datac => \pin_name5~input_o\,
	combout => \lfsr|outt\(0));

-- Location: IOIBUF_X12_Y0_N1
\pin_name1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\pin_name2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\pin_name3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name3,
	o => \pin_name3~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\pin_name4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name4,
	o => \pin_name4~input_o\);

\ww_1\ <= \1~output_o\;

\ww_2\ <= \2~output_o\;

\ww_3\ <= \3~output_o\;

\ww_4\ <= \4~output_o\;

\ww_5\ <= \5~output_o\;

\ww_6\ <= \6~output_o\;
END structure;


