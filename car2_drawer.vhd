library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Car2_drawer is 
	Port(
		 
		 DrawX: in std_logic_vector( 9 downto 0); 
		 DrawY: in std_logic_vector( 9 downto 0);
		 Car_X_center: in std_logic_vector (9 downto 0); 
		 Car_Y_center: in std_logic_vector (9 downto 0); 
		 draw_red: out std_logic_vector(7 downto 0);
		 draw_green: out std_logic_vector(7 downto 0);
		 draw_blue: out std_logic_vector(7 downto 0)
		 
		 );
end entity;



architecture table of Car2_drawer is

type car is array (1199 downto 0) of std_logic_vector(7 downto 0);
signal car_red : car := (

x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"60",
x"60",
x"60",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"80",
x"60",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"00",
x"00",
x"20",
x"20",
x"20",
x"20",
x"40",
x"80",
x"c0",
x"ff",
x"c0",
x"c0",
x"c0",
x"60",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"c0",
x"a0",
x"c0",
x"c0",
x"c0",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"ff",
x"c0",
x"a0",
x"60",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"a0",
x"80",
x"a0",
x"a0",
x"80",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"80",
x"c0",
x"80",
x"40",
x"20",
x"40",
x"40",
x"40",
x"60",
x"a0",
x"c0",
x"a0",
x"a0",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"80",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"a0",
x"60",
x"60",
x"80",
x"80",
x"c0",
x"c0",
x"60",
x"40",
x"20",
x"20",
x"80",
x"a0",
x"60",
x"40",
x"20",
x"20",
x"40",
x"80",
x"a0",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"80",
x"c0",
x"c0",
x"c0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"80",
x"60",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"60",
x"20",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"a0",
x"a0",
x"c0",
x"a0",
x"60",
x"40",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"a0",
x"c0",
x"c0",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"80",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"80",
x"a0",
x"c0",
x"a0",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"a0",
x"60",
x"40",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"60",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"c0",
x"a0",
x"80",
x"a0",
x"c0",
x"a0",
x"60",
x"40",
x"20",
x"20",
x"80",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"ff",
x"ff",
x"ff",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"a0",
x"c0",
x"c0",
x"60",
x"40",
x"00",
x"00",
x"20",
x"60",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"ff",
x"ff",
x"ff",
x"c0",
x"80",
x"c0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"c0",
x"c0",
x"a0",
x"40",
x"20",
x"00",
x"00",
x"00",
x"40",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"ff",
x"ff",
x"ff",
x"c0",
x"40",
x"c0",
x"c0",
x"ff",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"c0",
x"c0",
x"a0",
x"c0",
x"a0",
x"20",
x"00",
x"00",
x"00",
x"00",
x"40",
x"a0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"20",
x"40",
x"60",
x"c0",
x"c0",
x"c0",
x"ff",
x"c0",
x"40",
x"c0",
x"c0",
x"ff",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"c0",
x"c0",
x"a0",
x"a0",
x"a0",
x"20",
x"00",
x"00",
x"00",
x"00",
x"40",
x"a0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"40",
x"60",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"40",
x"c0",
x"ff",
x"ff",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"a0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"40",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"a0",
x"a0",
x"a0",
x"a0",
x"80",
x"40",
x"a0",
x"ff",
x"c0",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"60",
x"20",
x"20",
x"00",
x"00",
x"40",
x"c0",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"20",
x"40",
x"60",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"60",
x"a0",
x"c0",
x"a0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"c0",
x"a0",
x"60",
x"80",
x"a0",
x"a0",
x"60",
x"20",
x"20",
x"20",
x"80",
x"a6",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"c0",
x"60",
x"20",
x"40",
x"60",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"80",
x"60",
x"60",
x"a0",
x"a0",
x"80",
x"80",
x"40",
x"60",
x"80",
x"a0",
x"a0",
x"a6",
x"ff",
x"ff",
x"ff",
x"ff",
x"ff",
x"a0",
x"40",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"ff",
x"ff",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"60",
x"60",
x"40",
x"60",
x"60",
x"80",
x"a0",
x"60",
x"40",
x"20",
x"20",
x"40",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"80",
x"40",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"80",
x"a0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"60",
x"80",
x"60",
x"60",
x"80",
x"80",
x"a0",
x"80",
x"40",
x"20",
x"20",
x"60",
x"a0",
x"60",
x"40",
x"20",
x"20",
x"40",
x"60",
x"a0",
x"60",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"a0",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"60",
x"60",
x"60",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"60",
x"80",
x"a0",
x"80",
x"40",
x"20",
x"40",
x"40",
x"20",
x"40",
x"a0",
x"c0",
x"a0",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"60",
x"60",
x"60",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"20",
x"20",
x"40",
x"60",
x"60",
x"60",
x"60",
x"60",
x"60",
x"60",
x"80",
x"60",
x"60",
x"80",
x"60",
x"60",
x"60",
x"60",
x"60",
x"60",
x"60",
x"80",
x"80",
x"80",
x"80",
x"a0",
x"80",
x"80",
x"60",
x"60",
x"40",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"80",
x"a0",
x"80",
x"60",
x"40",
x"40",
x"40",
x"40",
x"20",
x"20",
x"40",
x"40",
x"20",
x"20",
x"40",
x"60",
x"80",
x"a0",
x"a0",
x"80",
x"60",
x"20",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"20",
x"40",
x"60",
x"60",
x"60",
x"40",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"60",
x"80",
x"80",
x"60",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"00",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00"



);

signal car_green: car :=(

x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"60",
x"60",
x"60",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"80",
x"60",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"00",
x"00",
x"20",
x"20",
x"20",
x"20",
x"40",
x"80",
x"c0",
x"fb",
x"dc",
x"dc",
x"dc",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"c0",
x"dc",
x"dc",
x"c0",
x"a0",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"c0",
x"a0",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"fb",
x"c0",
x"a0",
x"60",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"a0",
x"80",
x"a0",
x"a0",
x"80",
x"a0",
x"c0",
x"c0",
x"a0",
x"a0",
x"80",
x"c0",
x"80",
x"40",
x"20",
x"40",
x"40",
x"20",
x"60",
x"a0",
x"c0",
x"a0",
x"80",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"dc",
x"c0",
x"80",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"a0",
x"60",
x"60",
x"80",
x"80",
x"c0",
x"c0",
x"60",
x"40",
x"20",
x"20",
x"80",
x"a0",
x"60",
x"40",
x"20",
x"20",
x"40",
x"60",
x"a0",
x"60",
x"60",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"dc",
x"c0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"80",
x"60",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"60",
x"40",
x"20",
x"80",
x"c0",
x"c0",
x"c0",
x"a0",
x"a0",
x"c0",
x"a0",
x"60",
x"20",
x"60",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"a0",
x"c0",
x"c0",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"80",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"80",
x"a0",
x"c0",
x"c0",
x"dc",
x"fb",
x"ff",
x"fb",
x"fb",
x"dc",
x"a0",
x"60",
x"40",
x"60",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"60",
x"00",
x"00",
x"00",
x"00",
x"20",
x"60",
x"c0",
x"a0",
x"80",
x"a0",
x"c0",
x"a0",
x"60",
x"40",
x"20",
x"40",
x"80",
x"dc",
x"fb",
x"fb",
x"ff",
x"ff",
x"ff",
x"fb",
x"fb",
x"c0",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"c0",
x"fb",
x"fb",
x"fb",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"a0",
x"c0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"20",
x"60",
x"c0",
x"fb",
x"fb",
x"ff",
x"fb",
x"fb",
x"fb",
x"fb",
x"c0",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"fb",
x"fb",
x"fb",
x"dc",
x"80",
x"c0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a0",
x"c0",
x"c0",
x"a0",
x"40",
x"20",
x"00",
x"00",
x"00",
x"60",
x"c0",
x"fb",
x"ff",
x"ff",
x"fb",
x"fb",
x"fb",
x"ff",
x"dc",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"fb",
x"fb",
x"fb",
x"c0",
x"40",
x"c0",
x"c0",
x"fb",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"dc",
x"c0",
x"c0",
x"c0",
x"a0",
x"20",
x"00",
x"00",
x"20",
x"00",
x"40",
x"c0",
x"ff",
x"fb",
x"fb",
x"fb",
x"fb",
x"ff",
x"ff",
x"c0",
x"60",
x"20",
x"40",
x"60",
x"c0",
x"dc",
x"dc",
x"fb",
x"c0",
x"40",
x"c0",
x"dc",
x"fb",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"dc",
x"c0",
x"c0",
x"c0",
x"a0",
x"40",
x"00",
x"00",
x"00",
x"00",
x"60",
x"c0",
x"fb",
x"fb",
x"ff",
x"fb",
x"fb",
x"fb",
x"fb",
x"c0",
x"60",
x"40",
x"60",
x"60",
x"a0",
x"c0",
x"c0",
x"dc",
x"c0",
x"40",
x"c0",
x"fb",
x"fb",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"40",
x"a0",
x"c0",
x"a0",
x"c0",
x"c0",
x"a0",
x"40",
x"20",
x"00",
x"00",
x"00",
x"60",
x"c0",
x"ff",
x"fb",
x"ff",
x"ff",
x"fb",
x"fb",
x"fb",
x"c0",
x"60",
x"20",
x"40",
x"40",
x"a0",
x"c0",
x"c0",
x"c0",
x"80",
x"40",
x"a0",
x"fb",
x"dc",
x"a0",
x"00",
x"00",
x"00",
x"00",
x"40",
x"a0",
x"c0",
x"a0",
x"a0",
x"a0",
x"a0",
x"60",
x"40",
x"20",
x"00",
x"00",
x"60",
x"c0",
x"ff",
x"fb",
x"ff",
x"fb",
x"fb",
x"fb",
x"fb",
x"c0",
x"60",
x"20",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"60",
x"a0",
x"c0",
x"a0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"c0",
x"a0",
x"80",
x"a0",
x"c0",
x"a0",
x"60",
x"40",
x"40",
x"40",
x"80",
x"ca",
x"fb",
x"fb",
x"ff",
x"fb",
x"ff",
x"ff",
x"fb",
x"c0",
x"40",
x"00",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"c0",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"a0",
x"80",
x"60",
x"60",
x"a0",
x"a0",
x"c0",
x"ca",
x"fb",
x"fb",
x"fb",
x"fb",
x"fb",
x"a0",
x"40",
x"20",
x"40",
x"a0",
x"c0",
x"c0",
x"fb",
x"fb",
x"c0",
x"c0",
x"c0",
x"c0",
x"a0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"80",
x"80",
x"80",
x"60",
x"80",
x"80",
x"80",
x"a0",
x"80",
x"60",
x"40",
x"40",
x"60",
x"c0",
x"c0",
x"c0",
x"a0",
x"a0",
x"a0",
x"80",
x"40",
x"20",
x"60",
x"a0",
x"c0",
x"c0",
x"a0",
x"a0",
x"a0",
x"80",
x"a0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"60",
x"80",
x"80",
x"60",
x"80",
x"80",
x"80",
x"a0",
x"80",
x"60",
x"20",
x"40",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"60",
x"a0",
x"60",
x"60",
x"80",
x"80",
x"80",
x"a0",
x"a0",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"60",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"60",
x"80",
x"60",
x"80",
x"80",
x"a0",
x"c0",
x"c0",
x"a0",
x"80",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"40",
x"60",
x"a0",
x"c0",
x"a0",
x"80",
x"60",
x"60",
x"80",
x"80",
x"60",
x"80",
x"60",
x"60",
x"60",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"20",
x"40",
x"40",
x"60",
x"60",
x"60",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"60",
x"60",
x"60",
x"60",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"60",
x"60",
x"40",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"80",
x"a0",
x"80",
x"80",
x"60",
x"40",
x"40",
x"40",
x"20",
x"20",
x"40",
x"40",
x"20",
x"20",
x"40",
x"60",
x"80",
x"80",
x"80",
x"80",
x"60",
x"20",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"60",
x"60",
x"60",
x"40",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"40",
x"60",
x"80",
x"60",
x"60",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"00",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"20",
x"20",
x"20",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00"


);

signal car_blue: car :=(

x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"80",
x"40",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"80",
x"80",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"00",
x"00",
x"40",
x"40",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"f0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a4",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"a4",
x"a4",
x"a4",
x"a4",
x"a4",
x"c0",
x"c0",
x"a4",
x"c0",
x"a4",
x"a4",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"f0",
x"c0",
x"a4",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"a4",
x"80",
x"a4",
x"a4",
x"80",
x"a4",
x"c0",
x"c0",
x"a4",
x"80",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"a4",
x"a4",
x"a4",
x"c0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"80",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"80",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"80",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"80",
x"40",
x"80",
x"a4",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"a4",
x"c0",
x"c0",
x"a4",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"80",
x"80",
x"a4",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"80",
x"a4",
x"c0",
x"c0",
x"c0",
x"f0",
x"ff",
x"f0",
x"f0",
x"c0",
x"a4",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a4",
x"80",
x"a4",
x"c0",
x"a4",
x"80",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"f0",
x"f0",
x"ff",
x"ff",
x"ff",
x"f0",
x"f0",
x"c0",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"f0",
x"f0",
x"f0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a4",
x"c0",
x"c0",
x"c0",
x"80",
x"40",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"f0",
x"f0",
x"ff",
x"f0",
x"f0",
x"f0",
x"f0",
x"c0",
x"80",
x"40",
x"40",
x"80",
x"c0",
x"f0",
x"f0",
x"f0",
x"c0",
x"80",
x"c0",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"40",
x"40",
x"00",
x"00",
x"00",
x"40",
x"c0",
x"f0",
x"ff",
x"ff",
x"f0",
x"f0",
x"f0",
x"ff",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"c0",
x"f0",
x"f0",
x"f0",
x"c0",
x"40",
x"c0",
x"c0",
x"f0",
x"a4",
x"00",
x"00",
x"00",
x"00",
x"00",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"40",
x"00",
x"00",
x"40",
x"00",
x"40",
x"c0",
x"ff",
x"f0",
x"f0",
x"f0",
x"f0",
x"ff",
x"ff",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"c0",
x"c0",
x"c0",
x"f0",
x"c0",
x"40",
x"c0",
x"c0",
x"f0",
x"a4",
x"00",
x"00",
x"00",
x"00",
x"00",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"40",
x"00",
x"00",
x"00",
x"00",
x"40",
x"c0",
x"f0",
x"f0",
x"ff",
x"f0",
x"f0",
x"f0",
x"f0",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"a4",
x"c0",
x"c0",
x"c0",
x"c0",
x"40",
x"c0",
x"f0",
x"f0",
x"c0",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a4",
x"c0",
x"c0",
x"80",
x"40",
x"40",
x"00",
x"00",
x"00",
x"40",
x"c0",
x"ff",
x"f0",
x"ff",
x"ff",
x"f0",
x"f0",
x"f0",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"a4",
x"c0",
x"c0",
x"c0",
x"80",
x"40",
x"c0",
x"f0",
x"c0",
x"a4",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a4",
x"a4",
x"c0",
x"a4",
x"80",
x"40",
x"40",
x"00",
x"00",
x"80",
x"c0",
x"ff",
x"f0",
x"ff",
x"f0",
x"f0",
x"f0",
x"f0",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"a4",
x"c0",
x"c0",
x"a4",
x"80",
x"80",
x"a4",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"c0",
x"a4",
x"80",
x"80",
x"c0",
x"a4",
x"80",
x"40",
x"40",
x"40",
x"80",
x"f0",
x"f0",
x"f0",
x"ff",
x"f0",
x"ff",
x"ff",
x"f0",
x"c0",
x"40",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"c0",
x"f0",
x"f0",
x"f0",
x"f0",
x"f0",
x"f0",
x"a4",
x"40",
x"40",
x"40",
x"a4",
x"c0",
x"c0",
x"f0",
x"f0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a4",
x"80",
x"80",
x"40",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"a4",
x"c0",
x"c0",
x"80",
x"80",
x"40",
x"80",
x"c0",
x"c0",
x"c0",
x"c0",
x"c0",
x"a4",
x"80",
x"a4",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a4",
x"80",
x"80",
x"40",
x"40",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"80",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"80",
x"a4",
x"a4",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"80",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"80",
x"80",
x"80",
x"80",
x"80",
x"c0",
x"c0",
x"c0",
x"80",
x"80",
x"c0",
x"80",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"a4",
x"c0",
x"a4",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"40",
x"80",
x"80",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"40",
x"40",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"80",
x"80",
x"a4",
x"80",
x"80",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"40",
x"80",
x"80",
x"80",
x"80",
x"80",
x"80",
x"40",
x"40",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"40",
x"80",
x"80",
x"80",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"80",
x"80",
x"80",
x"80",
x"40",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"00",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"40",
x"40",
x"40",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00",
x"00"





);

signal x,y : std_logic_vector (9 downto 0); 
signal redsig: std_logic_vector(7 downto 0);
signal greensig: std_logic_vector(7 downto 0);
signal bluesig: std_logic_vector(7 downto 0);
signal x_decide: std_logic_vector(4 downto 0);
signal y_decide: std_logic_vector(4 downto 0); 
signal calculator, calculator2: std_logic_vector(9 downto 0); 


signal index: std_logic_vector(9 downto 0);
begin



color_process: process(DrawX,DrawY,Car_X_center,Car_Y_center)
begin

x<= DrawX+CONV_STD_LOGIC_VECTOR(20, 10)-Car_X_center;
y<= DrawY+CONV_STD_LOGIC_VECTOR(15, 10)-Car_Y_center;


calculator<= y(4 downto 0) & "00000";
calculator2 <= calculator + (y(6 downto 0) & "000");
index <= calculator2+x;



-----------------------------------------------------------------------------------
redsig<= car_red(conv_integer(index));		
draw_red<=redsig;    ---Draw the Red parts of the frog if he is moving up
------------------------------------------------------------------------------------
greensig<= car_green(conv_integer( index) );	
draw_green<=greensig;		---Draw the Green parts of the frog if he is moving up. 
----------------------------------------------------------------------------------
bluesig<= car_blue(conv_integer( index));	
draw_blue<=bluesig;		---Draw the blue parts of the frog if he is moving up. 
------------------------------------------------------------------------------------



end process;



end table; 
