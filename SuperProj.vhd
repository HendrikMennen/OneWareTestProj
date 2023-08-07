LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SuperProj IS
   PORT (
      CLK : IN STD_LOGIC;
      LED : BUFFER STD_LOGIC := '0'
   );
END ENTITY SuperProj;

ARCHITECTURE rtl OF SuperProj IS
   SIGNAL counter : INTEGER RANGE 0 TO 1000000 := 0;
BEGIN

   blink : PROCESS (clk)
   BEGIN
      IF rising_edge(clk) THEN
         IF counter < 1000000 THEN
            counter <= counter + 1;
         ELSE
            counter <= 0;
            LED <= NOT LED;
         END IF;
      END IF;
   END PROCESS blink;

END ARCHITECTURE rtl;
