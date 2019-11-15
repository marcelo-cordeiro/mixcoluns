-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mixcoluns is

	port 
	(
		men_in: in std_logic_vector (127 downto 0);
		men_out: out std_logic_vector (127 downto 0)
	);

end entity;


architecture rtl of mixcoluns is
component mult2 is

	port 
	(
		men_in : in std_logic_vector(7 downto 0);
		men_out: out std_logic_vector(7 downto 0)
	);

end component;
signal entradaMult2, saidaMult2: std_logic_vector (7 downto 0);
begin

p1: mult2 port map (men_in <= entradaMult2, men_out <= saidaMult2);


end rtl;
