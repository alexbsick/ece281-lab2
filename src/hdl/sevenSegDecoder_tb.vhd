----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2024 09:56:17 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegDecoder_tb is
end sevenSegDecoder_tb;

architecture Behavioral of sevenSegDecoder_tb is

    component sevenSegDecoder is
        port(
            i_D : in std_logic_vector(3 downto 0);
            o_S : out std_logic_vector(6 downto 0)
            
        );
    end component;

    signal w_in : std_logic_vector(3 downto 0) := x"0";
    signal w_out : std_logic_vector(6 downto 0) := "0000000";

begin
    
    sevenSegDecoder_inst : sevenSegDecoder port map (
        i_D => w_in,
        o_S => w_out
    );
    
    test_process : process
    begin
    w_in <= x"0"; wait for 10 ns;
    assert w_out = "1000000" report "bad x0" severity failure;
    w_in <= x"1"; wait for 10 ns;
    assert w_out = "1111001" report "bad x1" severity failure;
    w_in <= x"2"; wait for 10 ns;
    assert w_out = "0100100" report "bad x2" severity failure;
    w_in <= x"3"; wait for 10 ns;
    assert w_out = "0110000" report "bad x3" severity failure;
    w_in <= x"4"; wait for 10 ns;
    assert w_out = "0011001" report "bad x4" severity failure;
    w_in <= x"5"; wait for 10 ns;
    assert w_out = "0010010" report "bad x5" severity failure;    
    w_in <= x"6"; wait for 10 ns;
    assert w_out = "0000010" report "bad x6" severity failure;
    w_in <= x"7"; wait for 10 ns;
    assert w_out = "1111000" report "bad x7" severity failure;
    w_in <= x"8"; wait for 10 ns;
    assert w_out = "0000000" report "bad x8" severity failure;            
    w_in <= x"9"; wait for 10 ns;
    assert w_out = "0011000" report "bad x9" severity failure;            
    w_in <= x"A"; wait for 10 ns;
    assert w_out = "0001000" report "bad xA" severity failure;             
    w_in <= x"B"; wait for 10 ns;
    assert w_out = "0000011" report "bad xB" severity failure;
    w_in <= x"C"; wait for 10 ns;
    assert w_out = "0100111" report "bad xC" severity failure;
    w_in <= x"D"; wait for 10 ns;
    assert w_out = "0100001" report "bad xD" severity failure;
    w_in <= x"E"; wait for 10 ns;
    assert w_out = "0000110" report "bad xE" severity failure;
    w_in <= x"F"; wait for 10 ns;
    assert w_out = "0001110" report "bad xF" severity failure;            
    wait;
end process;

end Behavioral;
