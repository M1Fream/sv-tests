/*
:name: idx_pos_part_select
:description: indexed positive part-select bit test
:should_fail: 0
:tags: 11.5.1
*/
module top();
logic [15:0] a;
logic b;

initial begin
	b = a[11];
end

endmodule
