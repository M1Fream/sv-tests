/*
:name: enum_numerical_expr_no_cast
:description: enum numerical expression without casting
:should_fail: 1
:tags: 6.19.4
*/
module top();
	typedef enum {a, b, c, d} e;

	initial begin
		e val;
		val = a;
		val += 1;
	end
endmodule
