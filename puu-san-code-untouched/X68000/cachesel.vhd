LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;
USE	IEEE.STD_LOGIC_UNSIGNED.ALL;

entity cachesel is
generic(
	blocks	:integer	:=4
);
port(
	useno	:in integer range 0 to blocks-1;
	used	:in std_logic;
	
	nextno	:out integer range 0 to blocks-1;
	get		:in std_logic;
	
	clk		:in std_logic;
	rstn	:in std_logic
);
end cachesel;
architecture rtl of cachesel is
type prio_t is array (0 to blocks-1) of integer range 0 to blocks-1;
signal prio	:prio_t;
begin
	process(clk,rstn)
	variable tmp	:integer range 0 to blocks-1;
	begin
		if(rstn='0')then
			for i in 0 to blocks-1 loop
				prio(i)<=blocks-i-1;
			end loop;
		elsif(clk' event and clk='1')then
			if(used='1')then
				tmp:=prio(useno);
				for i in 0 to blocks-1 loop
					if(prio(i)<tmp)then
						prio(i)<=prio(i)+1;
					end if;
				end loop;
				prio(useno)<=0;
			elsif(get='1')then
				for i in 0 to blocks-1 loop
					if(prio(i)=blocks-1)then
						prio(i)<=0;
					else
						prio(i)<=prio(i)+1;
					end if;
				end loop;
			end if;
		end if;
	end process;
	
	process(prio)begin
		for i in 0 to blocks-1 loop
			if(prio(i)=blocks-1)then
				nextno<=i;
			end if;
		end loop;
	end process;
	
end rtl;
