/*
:name: pop_front
:description: Update queue by assignment (pop_front)
:should_fail: 0
:tags: 7.10.4
*/
module top ();

int q[$];
int r;

initial begin
	q.push_back(2);
	q.push_back(3);
	q.push_back(4);
	r = q[0];
	q = q[1:$];
	$display(":assert: (%d == 2)", q.size);
	$display(":assert: (%d == 2)", r);
	$display(":assert: (%d == 3)", q[0]);
end

endmodule
