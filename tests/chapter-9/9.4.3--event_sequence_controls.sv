/*
:name: event_sequence
:description: event sequence
:should_fail: 0
:tags: 9.4.3
*/
module block_tb ();
	reg a = 0;
	wire b = 1;
	reg enable = 0;

	initial begin
		#10 enable = 1;
	end

	initial begin
		wait (enable) #10 a = b;
	end
endmodule
