LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SuperProj_tb IS
END ENTITY SuperProj_tb;

ARCHITECTURE rtl OF SuperProj_tb IS

   CONSTANT period_time : TIME := 83333 ps;
   SIGNAL finished : STD_LOGIC := '0';

   SIGNAL CLK : STD_LOGIC;
   SIGNAL LED : STD_LOGIC;

   COMPONENT SuperProj IS
      PORT (
         CLK : IN STD_LOGIC;
         LED : BUFFER STD_LOGIC := '0'
      );
   END COMPONENT SuperProj;

BEGIN

   sim_time_proc : PROCESS
   BEGIN
      WAIT FOR 200 ms;
      finished <= '1';
      WAIT;
   END PROCESS sim_time_proc;

   clk_proc : PROCESS
   BEGIN
      WHILE finished /= '1' LOOP
         CLK <= '0';
         WAIT FOR period_time/2;
         CLK <= '1';
         WAIT FOR period_time/2;
      END LOOP;
      WAIT;
   END PROCESS clk_proc;

   u1 : SuperProj
   PORT MAP
   (
      CLK => CLK,
      LED => LED
   );

END ARCHITECTURE rtl;
