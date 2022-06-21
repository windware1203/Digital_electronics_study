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

-- DATE "06/07/2022 21:39:50"

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

ENTITY 	lfsr IS
    PORT (
	inSeed : IN std_logic_vector(0 TO 5);
	outt : OUT std_logic
	);
END lfsr;

-- Design Ports Information
-- inSeed[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSeed[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSeed[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSeed[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSeed[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outt	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSeed[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lfsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inSeed : std_logic_vector(0 TO 5);
SIGNAL ww_outt : std_logic;
SIGNAL \inSeed[5]~input_o\ : std_logic;
SIGNAL \inSeed[4]~input_o\ : std_logic;
SIGNAL \inSeed[3]~input_o\ : std_logic;
SIGNAL \inSeed[2]~input_o\ : std_logic;
SIGNAL \inSeed[1]~input_o\ : std_logic;
SIGNAL \outt~output_o\ : std_logic;
SIGNAL \inSeed[0]~input_o\ : std_logic;

BEGIN

ww_inSeed <= inSeed;
outt <= ww_outt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y31_N9
\outt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inSeed[0]~input_o\,
	devoe => ww_devoe,
	o => \outt~output_o\);

-- Location: IOIBUF_X14_Y31_N1
\inSeed[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(0),
	o => \inSeed[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\inSeed[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(5),
	o => \inSeed[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\inSeed[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(4),
	o => \inSeed[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\inSeed[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(3),
	o => \inSeed[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\inSeed[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(2),
	o => \inSeed[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\inSeed[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSeed(1),
	o => \inSeed[1]~input_o\);

ww_outt <= \outt~output_o\;
END structure;


