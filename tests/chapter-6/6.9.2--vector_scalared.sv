/*
:name: vector_scalared
:description: scalared vector tests
:should_fail: 0
:tags: 6.9.2
*/
module top();
	logic scalared [15:0] a = 0;

	a[1] = 1;
endmodule
