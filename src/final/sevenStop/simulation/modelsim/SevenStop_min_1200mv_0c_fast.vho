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

-- DATE "06/15/2022 09:57:39"

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

ENTITY 	SevenStop IS
    PORT (
	x : IN std_logic;
	clk : IN std_logic;
	inputer : IN std_logic_vector(0 TO 6);
	outputer : OUT std_logic_vector(0 TO 6)
	);
END SevenStop;

-- Design Ports Information
-- outputer[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputer[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputer[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SevenStop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inputer : std_logic_vector(0 TO 6);
SIGNAL ww_outputer : std_logic_vector(0 TO 6);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outputer[6]~output_o\ : std_logic;
SIGNAL \outputer[5]~output_o\ : std_logic;
SIGNAL \outputer[4]~output_o\ : std_logic;
SIGNAL \outputer[3]~output_o\ : std_logic;
SIGNAL \outputer[2]~output_o\ : std_logic;
SIGNAL \outputer[1]~output_o\ : std_logic;
SIGNAL \outputer[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inputer[4]~input_o\ : std_logic;
SIGNAL \inputer[6]~input_o\ : std_logic;
SIGNAL \inputer[1]~input_o\ : std_logic;
SIGNAL \inputer[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \inputer[5]~input_o\ : std_logic;
SIGNAL \inputer[3]~input_o\ : std_logic;
SIGNAL \inputer[2]~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \outputer~2_combout\ : std_logic;
SIGNAL \outputer~3_combout\ : std_logic;
SIGNAL \outputer[6]~reg0_q\ : std_logic;
SIGNAL \outputer~4_combout\ : std_logic;
SIGNAL \outputer~5_combout\ : std_logic;
SIGNAL \outputer~6_combout\ : std_logic;
SIGNAL \outputer[5]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \outputer~7_combout\ : std_logic;
SIGNAL \outputer~8_combout\ : std_logic;
SIGNAL \outputer~9_combout\ : std_logic;
SIGNAL \outputer[4]~reg0_q\ : std_logic;
SIGNAL \outputer~10_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \outputer~11_combout\ : std_logic;
SIGNAL \outputer~12_combout\ : std_logic;
SIGNAL \outputer[3]~reg0_q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \outputer[2]~reg0_q\ : std_logic;
SIGNAL \outputer[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \outputer~13_combout\ : std_logic;
SIGNAL \outputer~14_combout\ : std_logic;
SIGNAL \outputer[0]~reg0_q\ : std_logic;

BEGIN

ww_x <= x;
ww_clk <= clk;
ww_inputer <= inputer;
outputer <= ww_outputer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\outputer[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[6]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\outputer[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[5]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\outputer[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[4]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\outputer[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[3]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\outputer[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[2]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\outputer[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[1]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\outputer[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputer[0]~reg0_q\,
	devoe => ww_devoe,
	o => \outputer[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y31_N1
\inputer[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(4),
	o => \inputer[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\inputer[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(6),
	o => \inputer[6]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\inputer[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(1),
	o => \inputer[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\inputer[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(0),
	o => \inputer[0]~input_o\);

-- Location: LCCOMB_X18_Y18_N2
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\inputer[4]~input_o\ & (\inputer[6]~input_o\ & (\inputer[1]~input_o\ & \inputer[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[6]~input_o\,
	datac => \inputer[1]~input_o\,
	datad => \inputer[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X20_Y31_N8
\inputer[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(5),
	o => \inputer[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\inputer[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(3),
	o => \inputer[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\inputer[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputer(2),
	o => \inputer[2]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\x~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X18_Y18_N16
\outputer~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~2_combout\ = ((\inputer[3]~input_o\) # ((\inputer[2]~input_o\) # (\x~input_o\))) # (!\inputer[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \inputer[3]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \x~input_o\,
	combout => \outputer~2_combout\);

-- Location: LCCOMB_X18_Y18_N0
\outputer~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~3_combout\ = (\outputer~2_combout\) # (!\Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datad => \outputer~2_combout\,
	combout => \outputer~3_combout\);

-- Location: FF_X18_Y18_N1
\outputer[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[6]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N22
\outputer~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~4_combout\ = (\inputer[5]~input_o\ & (\inputer[6]~input_o\ & (!\inputer[2]~input_o\ & \inputer[4]~input_o\))) # (!\inputer[5]~input_o\ & (!\inputer[6]~input_o\ & (\inputer[2]~input_o\ & !\inputer[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \inputer[6]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[4]~input_o\,
	combout => \outputer~4_combout\);

-- Location: LCCOMB_X24_Y20_N0
\outputer~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~5_combout\ = (\inputer[1]~input_o\ & (!\inputer[3]~input_o\ & (\inputer[0]~input_o\ $ (!\inputer[4]~input_o\)))) # (!\inputer[1]~input_o\ & (!\inputer[0]~input_o\ & (\inputer[4]~input_o\ & \inputer[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[0]~input_o\,
	datab => \inputer[1]~input_o\,
	datac => \inputer[4]~input_o\,
	datad => \inputer[3]~input_o\,
	combout => \outputer~5_combout\);

-- Location: LCCOMB_X24_Y20_N16
\outputer~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~6_combout\ = ((\x~input_o\ $ (\inputer[3]~input_o\)) # (!\outputer~5_combout\)) # (!\outputer~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputer~4_combout\,
	datab => \outputer~5_combout\,
	datac => \x~input_o\,
	datad => \inputer[3]~input_o\,
	combout => \outputer~6_combout\);

-- Location: FF_X24_Y20_N17
\outputer[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[5]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N24
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\inputer[4]~input_o\ & (!\inputer[0]~input_o\ & (\inputer[2]~input_o\ $ (\inputer[5]~input_o\)))) # (!\inputer[4]~input_o\ & (\inputer[2]~input_o\ & (\inputer[5]~input_o\ & \inputer[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[2]~input_o\,
	datac => \inputer[5]~input_o\,
	datad => \inputer[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\inputer[4]~input_o\ & (\inputer[1]~input_o\ & \inputer[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datac => \inputer[1]~input_o\,
	datad => \inputer[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\inputer[6]~input_o\ & ((\inputer[5]~input_o\ & (!\inputer[2]~input_o\ & !\inputer[3]~input_o\)) # (!\inputer[5]~input_o\ & (\inputer[2]~input_o\ & \inputer[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \inputer[6]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\outputer~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~7_combout\ = (!\x~input_o\ & ((!\Mux6~0_combout\) # (!\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datac => \x~input_o\,
	datad => \Mux6~0_combout\,
	combout => \outputer~7_combout\);

-- Location: LCCOMB_X24_Y20_N2
\outputer~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~8_combout\ = (\inputer[3]~input_o\ & (!\inputer[1]~input_o\ & (\x~input_o\ & \inputer[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[3]~input_o\,
	datab => \inputer[1]~input_o\,
	datac => \x~input_o\,
	datad => \inputer[6]~input_o\,
	combout => \outputer~8_combout\);

-- Location: LCCOMB_X24_Y20_N18
\outputer~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~9_combout\ = (\outputer~7_combout\) # ((\Mux4~0_combout\ & \outputer~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datac => \outputer~7_combout\,
	datad => \outputer~8_combout\,
	combout => \outputer~9_combout\);

-- Location: FF_X24_Y20_N19
\outputer[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[4]~reg0_q\);

-- Location: LCCOMB_X18_Y18_N12
\outputer~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~10_combout\ = (!\inputer[5]~input_o\ & (\inputer[1]~input_o\ & (\inputer[2]~input_o\ & !\x~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \inputer[1]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \x~input_o\,
	combout => \outputer~10_combout\);

-- Location: LCCOMB_X18_Y18_N14
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\inputer[4]~input_o\ & (((!\inputer[6]~input_o\) # (!\inputer[3]~input_o\)) # (!\inputer[0]~input_o\))) # (!\inputer[4]~input_o\ & ((\inputer[0]~input_o\) # ((\inputer[3]~input_o\) # (\inputer[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[0]~input_o\,
	datac => \inputer[3]~input_o\,
	datad => \inputer[6]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\inputer[5]~input_o\ & (\inputer[2]~input_o\ & !\inputer[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X18_Y18_N8
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\inputer[4]~input_o\ & (!\inputer[1]~input_o\ & (\inputer[3]~input_o\ & \inputer[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[1]~input_o\,
	datac => \inputer[3]~input_o\,
	datad => \inputer[6]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X18_Y18_N6
\outputer~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~11_combout\ = ((\Mux3~1_combout\ & \Mux3~0_combout\)) # (!\x~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \x~input_o\,
	combout => \outputer~11_combout\);

-- Location: LCCOMB_X18_Y18_N10
\outputer~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~12_combout\ = ((\outputer~10_combout\ & !\Mux8~0_combout\)) # (!\outputer~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputer~10_combout\,
	datac => \Mux8~0_combout\,
	datad => \outputer~11_combout\,
	combout => \outputer~12_combout\);

-- Location: FF_X18_Y18_N11
\outputer[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[3]~reg0_q\);

-- Location: LCCOMB_X18_Y18_N20
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~0_combout\ & ((\inputer[2]~input_o\ & (\inputer[3]~input_o\ & !\inputer[5]~input_o\)) # (!\inputer[2]~input_o\ & (!\inputer[3]~input_o\ & \inputer[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[2]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \inputer[3]~input_o\,
	datad => \inputer[5]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X18_Y18_N26
\Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\inputer[6]~input_o\ & ((\inputer[4]~input_o\ & (!\inputer[0]~input_o\ & !\inputer[5]~input_o\)) # (!\inputer[4]~input_o\ & (\inputer[0]~input_o\ & \inputer[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[0]~input_o\,
	datac => \inputer[6]~input_o\,
	datad => \inputer[5]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X18_Y18_N4
\Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (((\inputer[1]~input_o\) # (!\inputer[2]~input_o\)) # (!\inputer[3]~input_o\)) # (!\Mux7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \inputer[3]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X18_Y18_N22
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\inputer[5]~input_o\ & (!\inputer[3]~input_o\ & (\inputer[2]~input_o\ & \inputer[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \inputer[3]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[1]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X18_Y18_N24
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\inputer[4]~input_o\ & (!\inputer[6]~input_o\ & (\Mux7~3_combout\ & !\inputer[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[6]~input_o\,
	datac => \Mux7~3_combout\,
	datad => \inputer[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X18_Y18_N28
\Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux7~2_combout\) # ((\Mux7~4_combout\) # ((\x~input_o\ & \Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \Mux7~2_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~7_combout\);

-- Location: FF_X18_Y18_N29
\outputer[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[2]~reg0_q\);

-- Location: FF_X18_Y18_N7
\outputer[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[1]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N20
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\inputer[6]~input_o\ & ((\inputer[4]~input_o\ & (!\inputer[2]~input_o\ & !\inputer[0]~input_o\)) # (!\inputer[4]~input_o\ & (\inputer[2]~input_o\ & \inputer[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[4]~input_o\,
	datab => \inputer[6]~input_o\,
	datac => \inputer[2]~input_o\,
	datad => \inputer[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\outputer~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~13_combout\ = (((\inputer[1]~input_o\) # (!\inputer[3]~input_o\)) # (!\Mux0~0_combout\)) # (!\inputer[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputer[5]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \inputer[1]~input_o\,
	datad => \inputer[3]~input_o\,
	combout => \outputer~13_combout\);

-- Location: LCCOMB_X24_Y20_N28
\outputer~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputer~14_combout\ = (\x~input_o\ & (((\outputer~13_combout\)))) # (!\x~input_o\ & (((!\Mux7~1_combout\)) # (!\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \outputer~13_combout\,
	datac => \x~input_o\,
	datad => \Mux7~1_combout\,
	combout => \outputer~14_combout\);

-- Location: FF_X24_Y20_N29
\outputer[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputer~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputer[0]~reg0_q\);

ww_outputer(6) <= \outputer[6]~output_o\;

ww_outputer(5) <= \outputer[5]~output_o\;

ww_outputer(4) <= \outputer[4]~output_o\;

ww_outputer(3) <= \outputer[3]~output_o\;

ww_outputer(2) <= \outputer[2]~output_o\;

ww_outputer(1) <= \outputer[1]~output_o\;

ww_outputer(0) <= \outputer[0]~output_o\;
END structure;


