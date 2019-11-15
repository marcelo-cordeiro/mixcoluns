-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2 is

	port 
	(
		men_in : in std_logic_vector(7 downto 0);
		men_out: out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of mult2 is
signal entrada1,saida,auxSaida: std_logic_vector(8 downto 0);
begin
	entrada1 <= men_in(31 downto 24) & '0';
		if(entrada1(8)='1') then
			auxSaida <= entrada1 xor "100011011";
			saida <= auxSaida(7 downto 0);
		else
			saida <= entrada1(7 downto 0);
		end if;
		men_out <= saida;
end rtl;
