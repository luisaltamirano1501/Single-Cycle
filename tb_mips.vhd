LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY tb_mips IS
END tb_mips;
 
ARCHITECTURE behavior OF tb_mips IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mips
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pc : out  std_logic_vector(31 downto 0);
         instr : IN  std_logic_vector(31 downto 0);
         memwrite : OUT  std_logic;
         aluout : out  std_logic_vector(31 downto 0);
         writedata : out  std_logic_vector(31 downto 0);
         readdata : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal instr : std_logic_vector(31 downto 0) := (others => '0');
   signal readdata : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal pc : std_logic_vector(31 downto 0);
   signal memwrite : std_logic;
   signal aluout : std_logic_vector(31 downto 0);
   signal writedata : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mips PORT MAP (
          clk => clk,
          reset => reset,
          pc => pc,
          instr => instr,
          memwrite => memwrite,
          aluout => aluout,
          writedata => writedata,
          readdata => readdata
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

		reset <= '1';
		readdata <= x"00000000";
      wait for 22 ns;		
		reset <= '0';
		instr <= x"20020005";
		wait for clk_period/2;
		instr <= x"2003000c";
		wait for clk_period/2;
		instr <= x"2067fff7";
		wait for clk_period/2;
		instr <= x"00e22025";

      -- insert stimulus here 

      wait;
   end process;

END;
