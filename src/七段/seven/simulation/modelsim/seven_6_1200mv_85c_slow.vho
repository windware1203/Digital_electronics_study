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

-- DATE "06/20/2022 18:31:37"

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

ENTITY 	seven IS
    PORT (
	a0 : IN std_logic;
	a1 : IN std_logic;
	a2 : IN std_logic;
	a3 : IN std_logic;
	lt : IN std_logic;
	rbi : IN std_logic;
	bi : IN std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	clk : IN std_logic
	);
END seven;

-- Design Ports Information
-- a	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lt	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rbi	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bi	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_lt : std_logic;
SIGNAL ww_rbi : std_logic;
SIGNAL ww_bi : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \dout[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \bi~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \rbi~input_o\ : std_logic;
SIGNAL \lt~input_o\ : std_logic;
SIGNAL \dout[0]~0_combout\ : std_logic;
SIGNAL \dout[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL dout : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_a0 <= a0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_a3 <= a3;
ww_lt <= lt;
ww_rbi <= rbi;
ww_bi <= bi;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dout[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dout[0]~0_combout\);

-- Location: IOOBUF_X20_Y31_N2
\a~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(0),
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\b~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(1),
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\c~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(2),
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\d~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(3),
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\e~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(4),
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\f~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(5),
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\g~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dout(6),
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\bi~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bi,
	o => \bi~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\a3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\a1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\a2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\a0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X14_Y2_N0
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\a3~input_o\ & (!\a1~input_o\ & (\a2~input_o\ $ (\a0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X12_Y31_N8
\rbi~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rbi,
	o => \rbi~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\lt~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lt,
	o => \lt~input_o\);

-- Location: LCCOMB_X11_Y30_N0
\dout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dout[0]~0_combout\ = (\rbi~input_o\ & \lt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rbi~input_o\,
	datad => \lt~input_o\,
	combout => \dout[0]~0_combout\);

-- Location: CLKCTRL_G11
\dout[0]~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dout[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dout[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y2_N30
\dout[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(0) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & ((dout(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => \Mux6~0_combout\,
	datac => dout(0),
	datad => \dout[0]~0clkctrl_outclk\,
	combout => dout(0));

-- Location: LCCOMB_X14_Y2_N26
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\a3~input_o\ & (\a2~input_o\ & (\a1~input_o\ $ (\a0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X14_Y2_N16
\dout[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(1) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & ((\Mux5~0_combout\))) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & (dout(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => dout(1),
	datac => \Mux5~0_combout\,
	datad => \dout[0]~0clkctrl_outclk\,
	combout => dout(1));

-- Location: LCCOMB_X14_Y2_N20
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\a3~input_o\ & (\a1~input_o\ & (!\a2~input_o\ & !\a0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X14_Y2_N10
\dout[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(2) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & ((dout(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => \Mux4~0_combout\,
	datac => \dout[0]~0clkctrl_outclk\,
	datad => dout(2),
	combout => dout(2));

-- Location: LCCOMB_X14_Y2_N22
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\a2~input_o\ & (!\a3~input_o\ & (\a1~input_o\ $ (!\a0~input_o\)))) # (!\a2~input_o\ & (((!\a1~input_o\ & \a0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X14_Y2_N28
\dout[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(3) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & ((\Mux3~0_combout\))) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & (dout(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => dout(3),
	datac => \Mux3~0_combout\,
	datad => \dout[0]~0clkctrl_outclk\,
	combout => dout(3));

-- Location: LCCOMB_X14_Y2_N8
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\a1~input_o\ & (!\a3~input_o\ & ((\a0~input_o\)))) # (!\a1~input_o\ & ((\a2~input_o\ & (!\a3~input_o\)) # (!\a2~input_o\ & ((\a0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X14_Y2_N14
\dout[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(4) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & (\Mux2~0_combout\)) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & ((dout(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => \Mux2~0_combout\,
	datac => dout(4),
	datad => \dout[0]~0clkctrl_outclk\,
	combout => dout(4));

-- Location: LCCOMB_X14_Y2_N2
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\a3~input_o\ & ((\a1~input_o\ & ((\a0~input_o\) # (!\a2~input_o\))) # (!\a1~input_o\ & (!\a2~input_o\ & \a0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X14_Y2_N24
\dout[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(5) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & ((dout(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => \Mux1~0_combout\,
	datac => \dout[0]~0clkctrl_outclk\,
	datad => dout(5),
	combout => dout(5));

-- Location: LCCOMB_X14_Y2_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\a1~input_o\ & (!\a3~input_o\ & ((!\a0~input_o\) # (!\a2~input_o\)))) # (!\a1~input_o\ & (\a3~input_o\ $ ((\a2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a1~input_o\,
	datac => \a2~input_o\,
	datad => \a0~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y2_N18
\dout[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- dout(6) = (\bi~input_o\ & ((GLOBAL(\dout[0]~0clkctrl_outclk\) & ((!\Mux0~0_combout\))) # (!GLOBAL(\dout[0]~0clkctrl_outclk\) & (dout(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bi~input_o\,
	datab => dout(6),
	datac => \Mux0~0_combout\,
	datad => \dout[0]~0clkctrl_outclk\,
	combout => dout(6));

-- Location: IOIBUF_X33_Y16_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


