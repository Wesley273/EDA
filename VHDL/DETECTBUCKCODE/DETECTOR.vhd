LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DETECTOR IS
    PORT (
        CLK : IN STD_LOGIC;
        BUCKOUT : OUT STD_LOGIC;
        RESULT : OUT STD_LOGIC
    );
END DETECTOR;
ARCHITECTURE BHV OF DETECTOR IS
    COMPONENT GENBUCKCODE IS
        PORT (
            CLK : IN STD_LOGIC;
            BUCKOUT : OUT STD_LOGIC;
            BEATOUT : BUFFER STD_LOGIC := '0'
        );
    END COMPONENT;
    COMPONENT DETECTBUCKCODE IS
        PORT (
            CLK : IN STD_LOGIC;
            BUCKIN : IN STD_LOGIC;
            RESULT : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL BUCK : STD_LOGIC;
    SIGNAL BEAT : STD_LOGIC;
BEGIN
    GENERATEOR : GENBUCKCODE PORT MAP(CLK => CLK, BUCKOUT => BUCK, BEATOUT => BEAT);
    DETECT : DETECTBUCKCODE PORT MAP(CLK => BEAT, BUCKIN => BUCK, RESULT => RESULT);
    BUCKOUT <= BUCK;
END BHV;