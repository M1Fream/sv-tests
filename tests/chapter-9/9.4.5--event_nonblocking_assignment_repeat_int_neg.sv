/*
:name: event_nonblocking_assignment_repeat
:description: event non blk assignment repeat
:should_fail: 0
:tags: 9.4.5
*/
module block_tb ();
	reg a = 0;
	reg b = 1;
	wire clk = 0;

	int i = -3;

	initial begin
		a = repeat(i) @(posedge clk) b;
	end
endmodule
