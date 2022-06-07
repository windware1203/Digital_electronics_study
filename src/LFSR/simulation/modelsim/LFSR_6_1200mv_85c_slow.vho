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

-- DATE "06/07/2022 21:10:40"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LFSR IS
    PORT (
	i_Clk : IN std_logic;
	i_Enable : IN std_logic;
	i_Seed_DV : IN std_logic;
	i_Seed_Data : IN std_logic_vector(4 DOWNTO 0);
	o_LFSR_Data : OUT std_logic_vector(4 DOWNTO 0);
	o_LFSR_Done : OUT std_logic
	);
END LFSR;

-- Design Ports Information
-- o_LFSR_Data[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LFSR_Data[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LFSR_Data[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LFSR_Data[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LFSR_Data[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LFSR_Done	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_Data[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_Data[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_Data[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_Data[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_Data[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Seed_DV	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Enable	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LFSR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_Enable : std_logic;
SIGNAL ww_i_Seed_DV : std_logic;
SIGNAL ww_i_Seed_Data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_LFSR_Data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_LFSR_Done : std_logic;
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_LFSR_Data[0]~output_o\ : std_logic;
SIGNAL \o_LFSR_Data[1]~output_o\ : std_logic;
SIGNAL \o_LFSR_Data[2]~output_o\ : std_logic;
SIGNAL \o_LFSR_Data[3]~output_o\ : std_logic;
SIGNAL \o_LFSR_Data[4]~output_o\ : std_logic;
SIGNAL \o_LFSR_Done~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_Seed_Data[0]~input_o\ : std_logic;
SIGNAL \i_Seed_DV~input_o\ : std_logic;
SIGNAL \i_Seed_Data[2]~input_o\ : std_logic;
SIGNAL \i_Seed_Data[1]~input_o\ : std_logic;
SIGNAL \r_LFSR~1_combout\ : std_logic;
SIGNAL \i_Enable~input_o\ : std_logic;
SIGNAL \r_LFSR~2_combout\ : std_logic;
SIGNAL \i_Seed_Data[4]~input_o\ : std_logic;
SIGNAL \i_Seed_Data[3]~input_o\ : std_logic;
SIGNAL \r_LFSR~3_combout\ : std_logic;
SIGNAL \r_LFSR~4_combout\ : std_logic;
SIGNAL \r_LFSR~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL r_LFSR : std_logic_vector(5 DOWNTO 1);

BEGIN

ww_i_Clk <= i_Clk;
ww_i_Enable <= i_Enable;
ww_i_Seed_DV <= i_Seed_DV;
ww_i_Seed_Data <= i_Seed_Data;
o_LFSR_Data <= ww_o_LFSR_Data;
o_LFSR_Done <= ww_o_LFSR_Done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\o_LFSR_Data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LFSR(1),
	devoe => ww_devoe,
	o => \o_LFSR_Data[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o_LFSR_Data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LFSR(2),
	devoe => ww_devoe,
	o => \o_LFSR_Data[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\o_LFSR_Data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LFSR(3),
	devoe => ww_devoe,
	o => \o_LFSR_Data[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\o_LFSR_Data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LFSR(4),
	devoe => ww_devoe,
	o => \o_LFSR_Data[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\o_LFSR_Data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_LFSR(5),
	devoe => ww_devoe,
	o => \o_LFSR_Data[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\o_LFSR_Done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \o_LFSR_Done~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_Clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G17
\i_Clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N8
\i_Seed_Data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_Data(0),
	o => \i_Seed_Data[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\i_Seed_DV~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_DV,
	o => \i_Seed_DV~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\i_Seed_Data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_Data(2),
	o => \i_Seed_Data[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\i_Seed_Data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_Data(1),
	o => \i_Seed_Data[1]~input_o\);

-- Location: LCCOMB_X21_Y1_N18
\r_LFSR~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_LFSR~1_combout\ = (\i_Seed_DV~input_o\ & (\i_Seed_Data[1]~input_o\)) # (!\i_Seed_DV~input_o\ & ((r_LFSR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[1]~input_o\,
	datac => \i_Seed_DV~input_o\,
	datad => r_LFSR(1),
	combout => \r_LFSR~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\i_Enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Enable,
	o => \i_Enable~input_o\);

-- Location: FF_X21_Y1_N19
\r_LFSR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_LFSR~1_combout\,
	ena => \i_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LFSR(2));

-- Location: LCCOMB_X21_Y1_N4
\r_LFSR~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_LFSR~2_combout\ = (\i_Seed_DV~input_o\ & (\i_Seed_Data[2]~input_o\)) # (!\i_Seed_DV~input_o\ & ((r_LFSR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[2]~input_o\,
	datac => \i_Seed_DV~input_o\,
	datad => r_LFSR(2),
	combout => \r_LFSR~2_combout\);

-- Location: FF_X21_Y1_N5
\r_LFSR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_LFSR~2_combout\,
	ena => \i_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LFSR(3));

-- Location: IOIBUF_X14_Y0_N1
\i_Seed_Data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_Data(4),
	o => \i_Seed_Data[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\i_Seed_Data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Seed_Data(3),
	o => \i_Seed_Data[3]~input_o\);

-- Location: LCCOMB_X21_Y1_N2
\r_LFSR~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_LFSR~3_combout\ = (\i_Seed_DV~input_o\ & (\i_Seed_Data[3]~input_o\)) # (!\i_Seed_DV~input_o\ & ((r_LFSR(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[3]~input_o\,
	datab => \i_Seed_DV~input_o\,
	datac => r_LFSR(3),
	combout => \r_LFSR~3_combout\);

-- Location: FF_X21_Y1_N3
\r_LFSR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_LFSR~3_combout\,
	ena => \i_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LFSR(4));

-- Location: LCCOMB_X21_Y1_N24
\r_LFSR~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_LFSR~4_combout\ = (\i_Seed_DV~input_o\ & (\i_Seed_Data[4]~input_o\)) # (!\i_Seed_DV~input_o\ & ((r_LFSR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[4]~input_o\,
	datac => \i_Seed_DV~input_o\,
	datad => r_LFSR(4),
	combout => \r_LFSR~4_combout\);

-- Location: FF_X21_Y1_N25
\r_LFSR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_LFSR~4_combout\,
	ena => \i_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LFSR(5));

-- Location: LCCOMB_X21_Y1_N12
\r_LFSR~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r_LFSR~0_combout\ = (\i_Seed_DV~input_o\ & (\i_Seed_Data[0]~input_o\)) # (!\i_Seed_DV~input_o\ & ((r_LFSR(3) $ (!r_LFSR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[0]~input_o\,
	datab => \i_Seed_DV~input_o\,
	datac => r_LFSR(3),
	datad => r_LFSR(5),
	combout => \r_LFSR~0_combout\);

-- Location: FF_X21_Y1_N13
\r_LFSR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \r_LFSR~0_combout\,
	ena => \i_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_LFSR(1));

-- Location: LCCOMB_X21_Y1_N28
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\i_Seed_Data[2]~input_o\ & (r_LFSR(3) & (\i_Seed_Data[3]~input_o\ $ (!r_LFSR(4))))) # (!\i_Seed_Data[2]~input_o\ & (!r_LFSR(3) & (\i_Seed_Data[3]~input_o\ $ (!r_LFSR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[2]~input_o\,
	datab => r_LFSR(3),
	datac => \i_Seed_Data[3]~input_o\,
	datad => r_LFSR(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y1_N26
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\i_Seed_Data[1]~input_o\ & (r_LFSR(2) & (\i_Seed_Data[0]~input_o\ $ (!r_LFSR(1))))) # (!\i_Seed_Data[1]~input_o\ & (!r_LFSR(2) & (\i_Seed_Data[0]~input_o\ $ (!r_LFSR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Seed_Data[1]~input_o\,
	datab => r_LFSR(2),
	datac => \i_Seed_Data[0]~input_o\,
	datad => r_LFSR(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y1_N22
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (r_LFSR(5) $ (!\i_Seed_Data[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_LFSR(5),
	datab => \Equal0~1_combout\,
	datac => \i_Seed_Data[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

ww_o_LFSR_Data(0) <= \o_LFSR_Data[0]~output_o\;

ww_o_LFSR_Data(1) <= \o_LFSR_Data[1]~output_o\;

ww_o_LFSR_Data(2) <= \o_LFSR_Data[2]~output_o\;

ww_o_LFSR_Data(3) <= \o_LFSR_Data[3]~output_o\;

ww_o_LFSR_Data(4) <= \o_LFSR_Data[4]~output_o\;

ww_o_LFSR_Done <= \o_LFSR_Done~output_o\;
END structure;


