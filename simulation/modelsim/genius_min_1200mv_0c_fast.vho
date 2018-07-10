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

-- DATE "07/09/2018 11:06:45"

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

ENTITY 	sequence IS
    PORT (
	clk : IN std_logic;
	addr : IN std_logic_vector(4 DOWNTO 0);
	data : IN std_logic_vector(1 DOWNTO 0);
	we : IN std_logic;
	q : OUT std_logic_vector(1 DOWNTO 0)
	);
END sequence;

-- Design Ports Information
-- q[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sequence IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_q : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \ram~62feeder_combout\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \ram~138_combout\ : std_logic;
SIGNAL \ram~139_combout\ : std_logic;
SIGNAL \ram~62_q\ : std_logic;
SIGNAL \ram~144_combout\ : std_logic;
SIGNAL \ram~145_combout\ : std_logic;
SIGNAL \ram~70_q\ : std_logic;
SIGNAL \ram~54feeder_combout\ : std_logic;
SIGNAL \ram~140_combout\ : std_logic;
SIGNAL \ram~141_combout\ : std_logic;
SIGNAL \ram~54_q\ : std_logic;
SIGNAL \ram~142_combout\ : std_logic;
SIGNAL \ram~143_combout\ : std_logic;
SIGNAL \ram~46_q\ : std_logic;
SIGNAL \ram~79_combout\ : std_logic;
SIGNAL \ram~80_combout\ : std_logic;
SIGNAL \ram~116_combout\ : std_logic;
SIGNAL \ram~117_combout\ : std_logic;
SIGNAL \ram~60_q\ : std_logic;
SIGNAL \ram~118_combout\ : std_logic;
SIGNAL \ram~119_combout\ : std_logic;
SIGNAL \ram~44_q\ : std_logic;
SIGNAL \ram~72_combout\ : std_logic;
SIGNAL \ram~52feeder_combout\ : std_logic;
SIGNAL \ram~114_combout\ : std_logic;
SIGNAL \ram~115_combout\ : std_logic;
SIGNAL \ram~52_q\ : std_logic;
SIGNAL \ram~120_combout\ : std_logic;
SIGNAL \ram~121_combout\ : std_logic;
SIGNAL \ram~68_q\ : std_logic;
SIGNAL \ram~73_combout\ : std_logic;
SIGNAL \ram~58feeder_combout\ : std_logic;
SIGNAL \ram~122_combout\ : std_logic;
SIGNAL \ram~123_combout\ : std_logic;
SIGNAL \ram~58_q\ : std_logic;
SIGNAL \ram~128_combout\ : std_logic;
SIGNAL \ram~129_combout\ : std_logic;
SIGNAL \ram~66_q\ : std_logic;
SIGNAL \ram~124_combout\ : std_logic;
SIGNAL \ram~125_combout\ : std_logic;
SIGNAL \ram~50_q\ : std_logic;
SIGNAL \ram~126_combout\ : std_logic;
SIGNAL \ram~127_combout\ : std_logic;
SIGNAL \ram~42_q\ : std_logic;
SIGNAL \ram~74_combout\ : std_logic;
SIGNAL \ram~75_combout\ : std_logic;
SIGNAL \ram~132_combout\ : std_logic;
SIGNAL \ram~133_combout\ : std_logic;
SIGNAL \ram~56_q\ : std_logic;
SIGNAL \ram~134_combout\ : std_logic;
SIGNAL \ram~135_combout\ : std_logic;
SIGNAL \ram~40_q\ : std_logic;
SIGNAL \ram~76_combout\ : std_logic;
SIGNAL \ram~136_combout\ : std_logic;
SIGNAL \ram~137_combout\ : std_logic;
SIGNAL \ram~64_q\ : std_logic;
SIGNAL \ram~130_combout\ : std_logic;
SIGNAL \ram~131_combout\ : std_logic;
SIGNAL \ram~48_q\ : std_logic;
SIGNAL \ram~77_combout\ : std_logic;
SIGNAL \ram~78_combout\ : std_logic;
SIGNAL \ram~81_combout\ : std_logic;
SIGNAL \ram~12feeder_combout\ : std_logic;
SIGNAL \ram~154_combout\ : std_logic;
SIGNAL \ram~12_q\ : std_logic;
SIGNAL \ram~10feeder_combout\ : std_logic;
SIGNAL \ram~155_combout\ : std_logic;
SIGNAL \ram~10_q\ : std_logic;
SIGNAL \ram~156_combout\ : std_logic;
SIGNAL \ram~8_q\ : std_logic;
SIGNAL \ram~86_combout\ : std_logic;
SIGNAL \ram~157_combout\ : std_logic;
SIGNAL \ram~14_q\ : std_logic;
SIGNAL \ram~87_combout\ : std_logic;
SIGNAL \ram~150_combout\ : std_logic;
SIGNAL \ram~18_q\ : std_logic;
SIGNAL \ram~153_combout\ : std_logic;
SIGNAL \ram~22_q\ : std_logic;
SIGNAL \ram~20feeder_combout\ : std_logic;
SIGNAL \ram~151_combout\ : std_logic;
SIGNAL \ram~20_q\ : std_logic;
SIGNAL \ram~152_combout\ : std_logic;
SIGNAL \ram~16_q\ : std_logic;
SIGNAL \ram~84_combout\ : std_logic;
SIGNAL \ram~85_combout\ : std_logic;
SIGNAL \ram~88_combout\ : std_logic;
SIGNAL \ram~147_combout\ : std_logic;
SIGNAL \ram~26_q\ : std_logic;
SIGNAL \ram~148_combout\ : std_logic;
SIGNAL \ram~24_q\ : std_logic;
SIGNAL \ram~82_combout\ : std_logic;
SIGNAL \ram~146_combout\ : std_logic;
SIGNAL \ram~28_q\ : std_logic;
SIGNAL \ram~149_combout\ : std_logic;
SIGNAL \ram~30_q\ : std_logic;
SIGNAL \ram~83_combout\ : std_logic;
SIGNAL \ram~36feeder_combout\ : std_logic;
SIGNAL \ram~159_combout\ : std_logic;
SIGNAL \ram~36_q\ : std_logic;
SIGNAL \ram~160_combout\ : std_logic;
SIGNAL \ram~32_q\ : std_logic;
SIGNAL \ram~89_combout\ : std_logic;
SIGNAL \ram~161_combout\ : std_logic;
SIGNAL \ram~38_q\ : std_logic;
SIGNAL \ram~34feeder_combout\ : std_logic;
SIGNAL \ram~158_combout\ : std_logic;
SIGNAL \ram~34_q\ : std_logic;
SIGNAL \ram~90_combout\ : std_logic;
SIGNAL \ram~91_combout\ : std_logic;
SIGNAL \ram~92_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \ram~51feeder_combout\ : std_logic;
SIGNAL \ram~51_q\ : std_logic;
SIGNAL \ram~59_q\ : std_logic;
SIGNAL \ram~43_q\ : std_logic;
SIGNAL \ram~93_combout\ : std_logic;
SIGNAL \ram~67_q\ : std_logic;
SIGNAL \ram~94_combout\ : std_logic;
SIGNAL \ram~55_q\ : std_logic;
SIGNAL \ram~63feeder_combout\ : std_logic;
SIGNAL \ram~63_q\ : std_logic;
SIGNAL \ram~47_q\ : std_logic;
SIGNAL \ram~100_combout\ : std_logic;
SIGNAL \ram~71_q\ : std_logic;
SIGNAL \ram~101_combout\ : std_logic;
SIGNAL \ram~57_q\ : std_logic;
SIGNAL \ram~49_q\ : std_logic;
SIGNAL \ram~41_q\ : std_logic;
SIGNAL \ram~97_combout\ : std_logic;
SIGNAL \ram~65_q\ : std_logic;
SIGNAL \ram~98_combout\ : std_logic;
SIGNAL \ram~61_q\ : std_logic;
SIGNAL \ram~69_q\ : std_logic;
SIGNAL \ram~53_q\ : std_logic;
SIGNAL \ram~45_q\ : std_logic;
SIGNAL \ram~95_combout\ : std_logic;
SIGNAL \ram~96_combout\ : std_logic;
SIGNAL \ram~99_combout\ : std_logic;
SIGNAL \ram~102_combout\ : std_logic;
SIGNAL \ram~21_q\ : std_logic;
SIGNAL \ram~19feeder_combout\ : std_logic;
SIGNAL \ram~19_q\ : std_logic;
SIGNAL \ram~17_q\ : std_logic;
SIGNAL \ram~103_combout\ : std_logic;
SIGNAL \ram~23_q\ : std_logic;
SIGNAL \ram~104_combout\ : std_logic;
SIGNAL \ram~37_q\ : std_logic;
SIGNAL \ram~39_q\ : std_logic;
SIGNAL \ram~35_q\ : std_logic;
SIGNAL \ram~33_q\ : std_logic;
SIGNAL \ram~110_combout\ : std_logic;
SIGNAL \ram~111_combout\ : std_logic;
SIGNAL \ram~11_q\ : std_logic;
SIGNAL \ram~15_q\ : std_logic;
SIGNAL \ram~9_q\ : std_logic;
SIGNAL \ram~13feeder_combout\ : std_logic;
SIGNAL \ram~13_q\ : std_logic;
SIGNAL \ram~107_combout\ : std_logic;
SIGNAL \ram~108_combout\ : std_logic;
SIGNAL \ram~29feeder_combout\ : std_logic;
SIGNAL \ram~29_q\ : std_logic;
SIGNAL \ram~25_q\ : std_logic;
SIGNAL \ram~105_combout\ : std_logic;
SIGNAL \ram~27_q\ : std_logic;
SIGNAL \ram~31_q\ : std_logic;
SIGNAL \ram~106_combout\ : std_logic;
SIGNAL \ram~109_combout\ : std_logic;
SIGNAL \ram~112_combout\ : std_logic;
SIGNAL \ram~113_combout\ : std_logic;
SIGNAL addr_reg : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_addr <= addr;
ww_data <= data;
ww_we <= we;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X35_Y29_N2
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~92_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~113_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X19_Y0_N1
\data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X27_Y10_N16
\ram~62feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~62feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~62feeder_combout\);

-- Location: IOIBUF_X23_Y29_N8
\addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\we~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: LCCOMB_X26_Y6_N28
\ram~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~138_combout\ = (\addr[0]~input_o\ & (\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~138_combout\);

-- Location: LCCOMB_X26_Y6_N14
\ram~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~139_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~138_combout\,
	combout => \ram~139_combout\);

-- Location: FF_X27_Y10_N17
\ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~62feeder_combout\,
	ena => \ram~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~62_q\);

-- Location: FF_X32_Y19_N3
\addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(3));

-- Location: LCCOMB_X26_Y6_N6
\ram~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~144_combout\ = (\addr[0]~input_o\ & (\addr[3]~input_o\ & (\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~144_combout\);

-- Location: LCCOMB_X26_Y8_N2
\ram~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~145_combout\ = (\we~input_o\ & (\addr[4]~input_o\ & \ram~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~144_combout\,
	combout => \ram~145_combout\);

-- Location: FF_X26_Y8_N27
\ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~70_q\);

-- Location: LCCOMB_X24_Y3_N0
\ram~54feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~54feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~54feeder_combout\);

-- Location: LCCOMB_X26_Y6_N16
\ram~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~140_combout\ = (\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~140_combout\);

-- Location: LCCOMB_X26_Y6_N26
\ram~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~141_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~140_combout\,
	combout => \ram~141_combout\);

-- Location: FF_X24_Y3_N1
\ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~54feeder_combout\,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~54_q\);

-- Location: LCCOMB_X26_Y6_N12
\ram~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~142_combout\ = (\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~142_combout\);

-- Location: LCCOMB_X26_Y8_N0
\ram~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~143_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \we~input_o\,
	datac => \ram~142_combout\,
	combout => \ram~143_combout\);

-- Location: FF_X26_Y8_N25
\ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~46_q\);

-- Location: FF_X32_Y19_N25
\addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(2));

-- Location: LCCOMB_X26_Y8_N24
\ram~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~79_combout\ = (addr_reg(3) & (((addr_reg(2))))) # (!addr_reg(3) & ((addr_reg(2) & (\ram~54_q\)) # (!addr_reg(2) & ((\ram~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~54_q\,
	datab => addr_reg(3),
	datac => \ram~46_q\,
	datad => addr_reg(2),
	combout => \ram~79_combout\);

-- Location: LCCOMB_X26_Y8_N26
\ram~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~80_combout\ = (addr_reg(3) & ((\ram~79_combout\ & ((\ram~70_q\))) # (!\ram~79_combout\ & (\ram~62_q\)))) # (!addr_reg(3) & (((\ram~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~62_q\,
	datab => addr_reg(3),
	datac => \ram~70_q\,
	datad => \ram~79_combout\,
	combout => \ram~80_combout\);

-- Location: FF_X32_Y19_N21
\addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(1));

-- Location: LCCOMB_X27_Y11_N28
\ram~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~116_combout\ = (\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~116_combout\);

-- Location: LCCOMB_X28_Y10_N8
\ram~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~117_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~116_combout\,
	combout => \ram~117_combout\);

-- Location: FF_X27_Y12_N1
\ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~60_q\);

-- Location: LCCOMB_X27_Y11_N30
\ram~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~118_combout\ = (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~118_combout\);

-- Location: LCCOMB_X28_Y10_N10
\ram~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~119_combout\ = (\addr[4]~input_o\ & (\ram~118_combout\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \ram~118_combout\,
	datac => \we~input_o\,
	combout => \ram~119_combout\);

-- Location: FF_X27_Y12_N3
\ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~44_q\);

-- Location: LCCOMB_X27_Y12_N2
\ram~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~72_combout\ = (addr_reg(3) & ((\ram~60_q\) # ((addr_reg(2))))) # (!addr_reg(3) & (((\ram~44_q\ & !addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~60_q\,
	datac => \ram~44_q\,
	datad => addr_reg(2),
	combout => \ram~72_combout\);

-- Location: LCCOMB_X27_Y11_N16
\ram~52feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~52feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~52feeder_combout\);

-- Location: LCCOMB_X27_Y11_N0
\ram~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~114_combout\ = (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~114_combout\);

-- Location: LCCOMB_X27_Y11_N18
\ram~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~115_combout\ = (\we~input_o\ & (\addr[4]~input_o\ & \ram~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~114_combout\,
	combout => \ram~115_combout\);

-- Location: FF_X27_Y11_N17
\ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~52feeder_combout\,
	ena => \ram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~52_q\);

-- Location: LCCOMB_X27_Y11_N8
\ram~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~120_combout\ = (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~120_combout\);

-- Location: LCCOMB_X27_Y11_N10
\ram~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~121_combout\ = (\we~input_o\ & (\ram~120_combout\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \ram~120_combout\,
	datac => \addr[4]~input_o\,
	combout => \ram~121_combout\);

-- Location: FF_X27_Y11_N3
\ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~68_q\);

-- Location: LCCOMB_X27_Y11_N2
\ram~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~73_combout\ = (\ram~72_combout\ & (((\ram~68_q\) # (!addr_reg(2))))) # (!\ram~72_combout\ & (\ram~52_q\ & ((addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~72_combout\,
	datab => \ram~52_q\,
	datac => \ram~68_q\,
	datad => addr_reg(2),
	combout => \ram~73_combout\);

-- Location: LCCOMB_X28_Y17_N16
\ram~58feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~58feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~58feeder_combout\);

-- Location: LCCOMB_X27_Y11_N12
\ram~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~122_combout\ = (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~122_combout\);

-- Location: LCCOMB_X28_Y10_N4
\ram~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~123_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \we~input_o\,
	datac => \ram~122_combout\,
	combout => \ram~123_combout\);

-- Location: FF_X28_Y17_N17
\ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~58feeder_combout\,
	ena => \ram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~58_q\);

-- Location: LCCOMB_X27_Y11_N26
\ram~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~128_combout\ = (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~128_combout\);

-- Location: LCCOMB_X28_Y10_N0
\ram~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~129_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~128_combout\,
	combout => \ram~129_combout\);

-- Location: FF_X31_Y19_N3
\ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~66_q\);

-- Location: LCCOMB_X27_Y11_N6
\ram~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~124_combout\ = (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~124_combout\);

-- Location: LCCOMB_X28_Y10_N6
\ram~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~125_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~124_combout\,
	combout => \ram~125_combout\);

-- Location: FF_X31_Y19_N9
\ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~50_q\);

-- Location: LCCOMB_X27_Y11_N24
\ram~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~126_combout\ = (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \ram~126_combout\);

-- Location: LCCOMB_X32_Y19_N16
\ram~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~127_combout\ = (\we~input_o\ & (\addr[4]~input_o\ & \ram~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~126_combout\,
	combout => \ram~127_combout\);

-- Location: FF_X32_Y19_N7
\ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~42_q\);

-- Location: LCCOMB_X32_Y19_N6
\ram~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~74_combout\ = (addr_reg(3) & (((addr_reg(2))))) # (!addr_reg(3) & ((addr_reg(2) & (\ram~50_q\)) # (!addr_reg(2) & ((\ram~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~50_q\,
	datac => \ram~42_q\,
	datad => addr_reg(2),
	combout => \ram~74_combout\);

-- Location: LCCOMB_X31_Y19_N2
\ram~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~75_combout\ = (addr_reg(3) & ((\ram~74_combout\ & ((\ram~66_q\))) # (!\ram~74_combout\ & (\ram~58_q\)))) # (!addr_reg(3) & (((\ram~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~58_q\,
	datac => \ram~66_q\,
	datad => \ram~74_combout\,
	combout => \ram~75_combout\);

-- Location: LCCOMB_X32_Y19_N26
\ram~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~132_combout\ = (!\addr[0]~input_o\ & (\addr[3]~input_o\ & (!\addr[1]~input_o\ & !\addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~132_combout\);

-- Location: LCCOMB_X28_Y10_N18
\ram~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~133_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~132_combout\,
	combout => \ram~133_combout\);

-- Location: FF_X28_Y11_N1
\ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~56_q\);

-- Location: LCCOMB_X26_Y6_N4
\ram~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~134_combout\ = (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & !\addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~134_combout\);

-- Location: LCCOMB_X26_Y6_N30
\ram~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~135_combout\ = (\addr[4]~input_o\ & (\ram~134_combout\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \ram~134_combout\,
	datac => \we~input_o\,
	combout => \ram~135_combout\);

-- Location: FF_X28_Y11_N11
\ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~40_q\);

-- Location: LCCOMB_X28_Y11_N10
\ram~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~76_combout\ = (addr_reg(3) & ((\ram~56_q\) # ((addr_reg(2))))) # (!addr_reg(3) & (((\ram~40_q\ & !addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~56_q\,
	datac => \ram~40_q\,
	datad => addr_reg(2),
	combout => \ram~76_combout\);

-- Location: LCCOMB_X26_Y6_N0
\ram~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~136_combout\ = (!\addr[0]~input_o\ & (\addr[3]~input_o\ & (!\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~136_combout\);

-- Location: LCCOMB_X26_Y6_N10
\ram~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~137_combout\ = (\addr[4]~input_o\ & (\we~input_o\ & \ram~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~136_combout\,
	combout => \ram~137_combout\);

-- Location: FF_X28_Y14_N19
\ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~64_q\);

-- Location: LCCOMB_X26_Y6_N8
\ram~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~130_combout\ = (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \ram~130_combout\);

-- Location: LCCOMB_X26_Y6_N2
\ram~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~131_combout\ = (\addr[4]~input_o\ & (\ram~130_combout\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \ram~130_combout\,
	datac => \we~input_o\,
	combout => \ram~131_combout\);

-- Location: FF_X28_Y14_N1
\ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~48_q\);

-- Location: LCCOMB_X28_Y14_N18
\ram~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~77_combout\ = (addr_reg(2) & ((\ram~76_combout\ & (\ram~64_q\)) # (!\ram~76_combout\ & ((\ram~48_q\))))) # (!addr_reg(2) & (\ram~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(2),
	datab => \ram~76_combout\,
	datac => \ram~64_q\,
	datad => \ram~48_q\,
	combout => \ram~77_combout\);

-- Location: FF_X32_Y19_N9
\addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(0));

-- Location: LCCOMB_X32_Y19_N10
\ram~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~78_combout\ = (addr_reg(1) & (((addr_reg(0))))) # (!addr_reg(1) & ((addr_reg(0) & (\ram~75_combout\)) # (!addr_reg(0) & ((\ram~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~75_combout\,
	datab => addr_reg(1),
	datac => \ram~77_combout\,
	datad => addr_reg(0),
	combout => \ram~78_combout\);

-- Location: LCCOMB_X32_Y19_N12
\ram~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~81_combout\ = (addr_reg(1) & ((\ram~78_combout\ & (\ram~80_combout\)) # (!\ram~78_combout\ & ((\ram~73_combout\))))) # (!addr_reg(1) & (((\ram~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~80_combout\,
	datab => addr_reg(1),
	datac => \ram~73_combout\,
	datad => \ram~78_combout\,
	combout => \ram~81_combout\);

-- Location: FF_X32_Y19_N19
\addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(4));

-- Location: LCCOMB_X27_Y10_N26
\ram~12feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~12feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~12feeder_combout\);

-- Location: LCCOMB_X28_Y10_N28
\ram~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~154_combout\ = (!\addr[4]~input_o\ & (\ram~118_combout\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \ram~118_combout\,
	datac => \we~input_o\,
	combout => \ram~154_combout\);

-- Location: FF_X27_Y10_N27
\ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~12feeder_combout\,
	ena => \ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~12_q\);

-- Location: LCCOMB_X30_Y11_N2
\ram~10feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~10feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~10feeder_combout\);

-- Location: LCCOMB_X32_Y19_N4
\ram~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~155_combout\ = (\we~input_o\ & (!\addr[4]~input_o\ & \ram~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~126_combout\,
	combout => \ram~155_combout\);

-- Location: FF_X30_Y11_N3
\ram~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~10feeder_combout\,
	ena => \ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~10_q\);

-- Location: LCCOMB_X30_Y13_N8
\ram~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~156_combout\ = (\we~input_o\ & (\ram~134_combout\ & !\addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \ram~134_combout\,
	datad => \addr[4]~input_o\,
	combout => \ram~156_combout\);

-- Location: FF_X30_Y13_N1
\ram~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~8_q\);

-- Location: LCCOMB_X30_Y13_N0
\ram~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~86_combout\ = (addr_reg(0) & ((\ram~10_q\) # ((addr_reg(1))))) # (!addr_reg(0) & (((\ram~8_q\ & !addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~10_q\,
	datac => \ram~8_q\,
	datad => addr_reg(1),
	combout => \ram~86_combout\);

-- Location: LCCOMB_X30_Y13_N2
\ram~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~157_combout\ = (\ram~142_combout\ & (\we~input_o\ & !\addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~142_combout\,
	datab => \we~input_o\,
	datad => \addr[4]~input_o\,
	combout => \ram~157_combout\);

-- Location: FF_X30_Y13_N27
\ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~14_q\);

-- Location: LCCOMB_X30_Y13_N26
\ram~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~87_combout\ = (\ram~86_combout\ & (((\ram~14_q\) # (!addr_reg(1))))) # (!\ram~86_combout\ & (\ram~12_q\ & ((addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~12_q\,
	datab => \ram~86_combout\,
	datac => \ram~14_q\,
	datad => addr_reg(1),
	combout => \ram~87_combout\);

-- Location: LCCOMB_X28_Y10_N2
\ram~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~150_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~124_combout\,
	combout => \ram~150_combout\);

-- Location: FF_X14_Y23_N17
\ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~18_q\);

-- Location: LCCOMB_X26_Y6_N20
\ram~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~153_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~140_combout\,
	combout => \ram~153_combout\);

-- Location: FF_X20_Y22_N3
\ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~22_q\);

-- Location: LCCOMB_X30_Y11_N0
\ram~20feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~20feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~20feeder_combout\);

-- Location: LCCOMB_X27_Y11_N4
\ram~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~151_combout\ = (\we~input_o\ & (!\addr[4]~input_o\ & \ram~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~114_combout\,
	combout => \ram~151_combout\);

-- Location: FF_X30_Y11_N1
\ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~20feeder_combout\,
	ena => \ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~20_q\);

-- Location: LCCOMB_X26_Y6_N18
\ram~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~152_combout\ = (!\addr[4]~input_o\ & (\ram~130_combout\ & \we~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \ram~130_combout\,
	datac => \we~input_o\,
	combout => \ram~152_combout\);

-- Location: FF_X20_Y22_N25
\ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~16_q\);

-- Location: LCCOMB_X20_Y22_N24
\ram~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~84_combout\ = (addr_reg(0) & (((addr_reg(1))))) # (!addr_reg(0) & ((addr_reg(1) & (\ram~20_q\)) # (!addr_reg(1) & ((\ram~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~20_q\,
	datac => \ram~16_q\,
	datad => addr_reg(1),
	combout => \ram~84_combout\);

-- Location: LCCOMB_X20_Y22_N2
\ram~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~85_combout\ = (addr_reg(0) & ((\ram~84_combout\ & ((\ram~22_q\))) # (!\ram~84_combout\ & (\ram~18_q\)))) # (!addr_reg(0) & (((\ram~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~18_q\,
	datac => \ram~22_q\,
	datad => \ram~84_combout\,
	combout => \ram~85_combout\);

-- Location: LCCOMB_X32_Y19_N22
\ram~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~88_combout\ = (addr_reg(3) & (((addr_reg(2))))) # (!addr_reg(3) & ((addr_reg(2) & ((\ram~85_combout\))) # (!addr_reg(2) & (\ram~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~87_combout\,
	datab => \ram~85_combout\,
	datac => addr_reg(3),
	datad => addr_reg(2),
	combout => \ram~88_combout\);

-- Location: LCCOMB_X28_Y10_N30
\ram~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~147_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \we~input_o\,
	datac => \ram~122_combout\,
	combout => \ram~147_combout\);

-- Location: FF_X28_Y10_N17
\ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~26_q\);

-- Location: LCCOMB_X28_Y10_N24
\ram~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~148_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~132_combout\,
	combout => \ram~148_combout\);

-- Location: FF_X28_Y10_N27
\ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~24_q\);

-- Location: LCCOMB_X28_Y10_N26
\ram~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~82_combout\ = (addr_reg(0) & ((\ram~26_q\) # ((addr_reg(1))))) # (!addr_reg(0) & (((\ram~24_q\ & !addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~26_q\,
	datac => \ram~24_q\,
	datad => addr_reg(1),
	combout => \ram~82_combout\);

-- Location: LCCOMB_X28_Y10_N20
\ram~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~146_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~116_combout\,
	combout => \ram~146_combout\);

-- Location: FF_X29_Y18_N25
\ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~28_q\);

-- Location: LCCOMB_X26_Y6_N24
\ram~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~149_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~138_combout\,
	combout => \ram~149_combout\);

-- Location: FF_X29_Y18_N11
\ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~30_q\);

-- Location: LCCOMB_X29_Y18_N10
\ram~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~83_combout\ = (\ram~82_combout\ & (((\ram~30_q\) # (!addr_reg(1))))) # (!\ram~82_combout\ & (\ram~28_q\ & ((addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~82_combout\,
	datab => \ram~28_q\,
	datac => \ram~30_q\,
	datad => addr_reg(1),
	combout => \ram~83_combout\);

-- Location: LCCOMB_X24_Y3_N26
\ram~36feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~36feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~36feeder_combout\);

-- Location: LCCOMB_X27_Y11_N22
\ram~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~159_combout\ = (\we~input_o\ & (\ram~120_combout\ & !\addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \ram~120_combout\,
	datac => \addr[4]~input_o\,
	combout => \ram~159_combout\);

-- Location: FF_X24_Y3_N27
\ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~36feeder_combout\,
	ena => \ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~36_q\);

-- Location: LCCOMB_X26_Y6_N22
\ram~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~160_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~136_combout\,
	combout => \ram~160_combout\);

-- Location: FF_X28_Y15_N1
\ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~32_q\);

-- Location: LCCOMB_X28_Y15_N0
\ram~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~89_combout\ = (addr_reg(0) & (((addr_reg(1))))) # (!addr_reg(0) & ((addr_reg(1) & (\ram~36_q\)) # (!addr_reg(1) & ((\ram~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~36_q\,
	datac => \ram~32_q\,
	datad => addr_reg(1),
	combout => \ram~89_combout\);

-- Location: LCCOMB_X26_Y8_N4
\ram~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~161_combout\ = (\we~input_o\ & (!\addr[4]~input_o\ & \ram~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \addr[4]~input_o\,
	datad => \ram~144_combout\,
	combout => \ram~161_combout\);

-- Location: FF_X28_Y15_N11
\ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~38_q\);

-- Location: LCCOMB_X28_Y17_N10
\ram~34feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~34feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~34feeder_combout\);

-- Location: LCCOMB_X28_Y10_N14
\ram~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~158_combout\ = (!\addr[4]~input_o\ & (\we~input_o\ & \ram~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datac => \we~input_o\,
	datad => \ram~128_combout\,
	combout => \ram~158_combout\);

-- Location: FF_X28_Y17_N11
\ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~34feeder_combout\,
	ena => \ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~34_q\);

-- Location: LCCOMB_X28_Y15_N10
\ram~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~90_combout\ = (addr_reg(0) & ((\ram~89_combout\ & (\ram~38_q\)) # (!\ram~89_combout\ & ((\ram~34_q\))))) # (!addr_reg(0) & (\ram~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~89_combout\,
	datac => \ram~38_q\,
	datad => \ram~34_q\,
	combout => \ram~90_combout\);

-- Location: LCCOMB_X32_Y19_N0
\ram~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~91_combout\ = (\ram~88_combout\ & (((\ram~90_combout\) # (!addr_reg(3))))) # (!\ram~88_combout\ & (\ram~83_combout\ & (addr_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~88_combout\,
	datab => \ram~83_combout\,
	datac => addr_reg(3),
	datad => \ram~90_combout\,
	combout => \ram~91_combout\);

-- Location: LCCOMB_X32_Y19_N28
\ram~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~92_combout\ = (addr_reg(4) & (\ram~81_combout\)) # (!addr_reg(4) & ((\ram~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~81_combout\,
	datab => addr_reg(4),
	datad => \ram~91_combout\,
	combout => \ram~92_combout\);

-- Location: IOIBUF_X19_Y0_N8
\data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X31_Y19_N12
\ram~51feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~51feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~51feeder_combout\);

-- Location: FF_X31_Y19_N13
\ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~51feeder_combout\,
	ena => \ram~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~51_q\);

-- Location: FF_X28_Y17_N21
\ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~59_q\);

-- Location: FF_X32_Y19_N15
\ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~43_q\);

-- Location: LCCOMB_X32_Y19_N14
\ram~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~93_combout\ = (addr_reg(3) & ((\ram~59_q\) # ((addr_reg(2))))) # (!addr_reg(3) & (((\ram~43_q\ & !addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~59_q\,
	datac => \ram~43_q\,
	datad => addr_reg(2),
	combout => \ram~93_combout\);

-- Location: FF_X31_Y19_N15
\ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~67_q\);

-- Location: LCCOMB_X31_Y19_N14
\ram~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~94_combout\ = (\ram~93_combout\ & (((\ram~67_q\) # (!addr_reg(2))))) # (!\ram~93_combout\ & (\ram~51_q\ & ((addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~51_q\,
	datab => \ram~93_combout\,
	datac => \ram~67_q\,
	datad => addr_reg(2),
	combout => \ram~94_combout\);

-- Location: FF_X24_Y3_N21
\ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~55_q\);

-- Location: LCCOMB_X27_Y10_N20
\ram~63feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~63feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~63feeder_combout\);

-- Location: FF_X27_Y10_N21
\ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~63feeder_combout\,
	ena => \ram~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~63_q\);

-- Location: FF_X26_Y8_N29
\ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~47_q\);

-- Location: LCCOMB_X26_Y8_N28
\ram~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~100_combout\ = (addr_reg(3) & ((\ram~63_q\) # ((addr_reg(2))))) # (!addr_reg(3) & (((\ram~47_q\ & !addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~63_q\,
	datab => addr_reg(3),
	datac => \ram~47_q\,
	datad => addr_reg(2),
	combout => \ram~100_combout\);

-- Location: FF_X26_Y8_N7
\ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~71_q\);

-- Location: LCCOMB_X26_Y8_N6
\ram~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~101_combout\ = (\ram~100_combout\ & (((\ram~71_q\) # (!addr_reg(2))))) # (!\ram~100_combout\ & (\ram~55_q\ & ((addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~55_q\,
	datab => \ram~100_combout\,
	datac => \ram~71_q\,
	datad => addr_reg(2),
	combout => \ram~101_combout\);

-- Location: FF_X28_Y11_N5
\ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~57_q\);

-- Location: FF_X28_Y14_N29
\ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~49_q\);

-- Location: FF_X28_Y11_N23
\ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~41_q\);

-- Location: LCCOMB_X28_Y11_N22
\ram~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~97_combout\ = (addr_reg(3) & (((addr_reg(2))))) # (!addr_reg(3) & ((addr_reg(2) & (\ram~49_q\)) # (!addr_reg(2) & ((\ram~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~49_q\,
	datac => \ram~41_q\,
	datad => addr_reg(2),
	combout => \ram~97_combout\);

-- Location: FF_X28_Y14_N7
\ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~65_q\);

-- Location: LCCOMB_X28_Y14_N6
\ram~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~98_combout\ = (\ram~97_combout\ & (((\ram~65_q\) # (!addr_reg(3))))) # (!\ram~97_combout\ & (\ram~57_q\ & ((addr_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~57_q\,
	datab => \ram~97_combout\,
	datac => \ram~65_q\,
	datad => addr_reg(3),
	combout => \ram~98_combout\);

-- Location: FF_X27_Y12_N5
\ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~61_q\);

-- Location: FF_X27_Y11_N15
\ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~69_q\);

-- Location: FF_X27_Y11_N21
\ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~53_q\);

-- Location: FF_X27_Y12_N31
\ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~45_q\);

-- Location: LCCOMB_X27_Y12_N30
\ram~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~95_combout\ = (addr_reg(3) & (((addr_reg(2))))) # (!addr_reg(3) & ((addr_reg(2) & (\ram~53_q\)) # (!addr_reg(2) & ((\ram~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~53_q\,
	datac => \ram~45_q\,
	datad => addr_reg(2),
	combout => \ram~95_combout\);

-- Location: LCCOMB_X27_Y11_N14
\ram~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~96_combout\ = (addr_reg(3) & ((\ram~95_combout\ & ((\ram~69_q\))) # (!\ram~95_combout\ & (\ram~61_q\)))) # (!addr_reg(3) & (((\ram~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(3),
	datab => \ram~61_q\,
	datac => \ram~69_q\,
	datad => \ram~95_combout\,
	combout => \ram~96_combout\);

-- Location: LCCOMB_X32_Y19_N20
\ram~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~99_combout\ = (addr_reg(1) & (((\ram~96_combout\) # (addr_reg(0))))) # (!addr_reg(1) & (\ram~98_combout\ & ((!addr_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~98_combout\,
	datab => \ram~96_combout\,
	datac => addr_reg(1),
	datad => addr_reg(0),
	combout => \ram~99_combout\);

-- Location: LCCOMB_X32_Y19_N8
\ram~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~102_combout\ = (addr_reg(0) & ((\ram~99_combout\ & ((\ram~101_combout\))) # (!\ram~99_combout\ & (\ram~94_combout\)))) # (!addr_reg(0) & (((\ram~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~94_combout\,
	datab => \ram~101_combout\,
	datac => addr_reg(0),
	datad => \ram~99_combout\,
	combout => \ram~102_combout\);

-- Location: FF_X30_Y11_N13
\ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~21_q\);

-- Location: LCCOMB_X14_Y23_N18
\ram~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~19feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~19feeder_combout\);

-- Location: FF_X14_Y23_N19
\ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~19feeder_combout\,
	ena => \ram~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~19_q\);

-- Location: FF_X20_Y22_N29
\ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~17_q\);

-- Location: LCCOMB_X20_Y22_N28
\ram~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~103_combout\ = (addr_reg(0) & ((\ram~19_q\) # ((addr_reg(1))))) # (!addr_reg(0) & (((\ram~17_q\ & !addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~19_q\,
	datac => \ram~17_q\,
	datad => addr_reg(1),
	combout => \ram~103_combout\);

-- Location: FF_X20_Y22_N31
\ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~23_q\);

-- Location: LCCOMB_X20_Y22_N30
\ram~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~104_combout\ = (\ram~103_combout\ & (((\ram~23_q\) # (!addr_reg(1))))) # (!\ram~103_combout\ & (\ram~21_q\ & ((addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~21_q\,
	datab => \ram~103_combout\,
	datac => \ram~23_q\,
	datad => addr_reg(1),
	combout => \ram~104_combout\);

-- Location: FF_X24_Y3_N31
\ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~37_q\);

-- Location: FF_X28_Y15_N7
\ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~39_q\);

-- Location: FF_X28_Y17_N7
\ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~35_q\);

-- Location: FF_X28_Y15_N13
\ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~33_q\);

-- Location: LCCOMB_X28_Y15_N12
\ram~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~110_combout\ = (addr_reg(0) & ((\ram~35_q\) # ((addr_reg(1))))) # (!addr_reg(0) & (((\ram~33_q\ & !addr_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~35_q\,
	datac => \ram~33_q\,
	datad => addr_reg(1),
	combout => \ram~110_combout\);

-- Location: LCCOMB_X28_Y15_N6
\ram~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~111_combout\ = (addr_reg(1) & ((\ram~110_combout\ & ((\ram~39_q\))) # (!\ram~110_combout\ & (\ram~37_q\)))) # (!addr_reg(1) & (((\ram~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~37_q\,
	datab => addr_reg(1),
	datac => \ram~39_q\,
	datad => \ram~110_combout\,
	combout => \ram~111_combout\);

-- Location: FF_X30_Y11_N23
\ram~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~11_q\);

-- Location: FF_X30_Y13_N15
\ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~15_q\);

-- Location: FF_X30_Y13_N13
\ram~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~9_q\);

-- Location: LCCOMB_X27_Y10_N6
\ram~13feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~13feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~13feeder_combout\);

-- Location: FF_X27_Y10_N7
\ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~13feeder_combout\,
	ena => \ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~13_q\);

-- Location: LCCOMB_X30_Y13_N12
\ram~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~107_combout\ = (addr_reg(0) & (addr_reg(1))) # (!addr_reg(0) & ((addr_reg(1) & ((\ram~13_q\))) # (!addr_reg(1) & (\ram~9_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => addr_reg(1),
	datac => \ram~9_q\,
	datad => \ram~13_q\,
	combout => \ram~107_combout\);

-- Location: LCCOMB_X30_Y13_N14
\ram~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~108_combout\ = (addr_reg(0) & ((\ram~107_combout\ & ((\ram~15_q\))) # (!\ram~107_combout\ & (\ram~11_q\)))) # (!addr_reg(0) & (((\ram~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~11_q\,
	datac => \ram~15_q\,
	datad => \ram~107_combout\,
	combout => \ram~108_combout\);

-- Location: LCCOMB_X29_Y18_N20
\ram~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~29feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~29feeder_combout\);

-- Location: FF_X29_Y18_N21
\ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~29feeder_combout\,
	ena => \ram~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~29_q\);

-- Location: FF_X28_Y10_N23
\ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~25_q\);

-- Location: LCCOMB_X28_Y10_N22
\ram~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~105_combout\ = (addr_reg(0) & (((addr_reg(1))))) # (!addr_reg(0) & ((addr_reg(1) & (\ram~29_q\)) # (!addr_reg(1) & ((\ram~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \ram~29_q\,
	datac => \ram~25_q\,
	datad => addr_reg(1),
	combout => \ram~105_combout\);

-- Location: FF_X28_Y10_N13
\ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~27_q\);

-- Location: FF_X29_Y18_N31
\ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~31_q\);

-- Location: LCCOMB_X29_Y18_N30
\ram~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~106_combout\ = (\ram~105_combout\ & (((\ram~31_q\) # (!addr_reg(0))))) # (!\ram~105_combout\ & (\ram~27_q\ & ((addr_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~105_combout\,
	datab => \ram~27_q\,
	datac => \ram~31_q\,
	datad => addr_reg(0),
	combout => \ram~106_combout\);

-- Location: LCCOMB_X32_Y19_N2
\ram~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~109_combout\ = (addr_reg(3) & (((\ram~106_combout\) # (addr_reg(2))))) # (!addr_reg(3) & (\ram~108_combout\ & ((!addr_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~108_combout\,
	datab => \ram~106_combout\,
	datac => addr_reg(3),
	datad => addr_reg(2),
	combout => \ram~109_combout\);

-- Location: LCCOMB_X32_Y19_N24
\ram~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~112_combout\ = (addr_reg(2) & ((\ram~109_combout\ & ((\ram~111_combout\))) # (!\ram~109_combout\ & (\ram~104_combout\)))) # (!addr_reg(2) & (((\ram~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~104_combout\,
	datab => \ram~111_combout\,
	datac => addr_reg(2),
	datad => \ram~109_combout\,
	combout => \ram~112_combout\);

-- Location: LCCOMB_X32_Y19_N18
\ram~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram~113_combout\ = (addr_reg(4) & (\ram~102_combout\)) # (!addr_reg(4) & ((\ram~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~102_combout\,
	datac => addr_reg(4),
	datad => \ram~112_combout\,
	combout => \ram~113_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;
END structure;


