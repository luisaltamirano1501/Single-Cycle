-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF mips IS 

  -- Component Declaration
          COMPONENT mips
          PORT(clk, reset: 			in STD_LOGIC;
					pc: 						out STD_LOGIC_VECTOR(31 downto 0);
					instr: 					in STD_LOGIC_VECTOR(31 downto 0);
					memwrite: 				out STD_LOGIC;
					aluout, writedata: 	out STD_LOGIC_VECTOR(31 downto 0);
					readdata: 				in STD_LOGIC_VECTOR(31 downto 0));
          END COMPONENT;
--Inputs
          SIGNAL clk, reset:  STD_LOGIC := (others => '0');
          SIGNAL instr     :  STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
          SIGNAL readdata  :  STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
			 
--Outputs
			SIGNAL pc						: STD_LOGIC_VECTOR(31 downto 0) 	;
			SIGNAL memwrite				: STD_LOGIC								;
			SIGNAL aluout,writedata		: STD_LOGIC_VECTOR(31 downto 0)	;
  BEGIN

  -- Component Instantiation
          uut: mips PORT MAP (clk, reset      => clk, reset,
                  pc 								=> pc,
                  instr 							=> instr,
						memwrite							=> memwrite,
						aluout,writedata				=> aluout,writedata,
						readdata							=> readdata
          );

------------------------------------------------------------------------------------------------------
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			clk, reset <= "0";
			instr 	<= "00000000000000000000000000000000";
			readdata <= "00000000000000000000000000000000";
			
        wait for 50 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
