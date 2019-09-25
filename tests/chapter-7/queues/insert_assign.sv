/*
:name: insert
:description: Update queue by assignment (insert)
:should_fail: 0
:tags: 7.10.4
*/
module top ();

int q[$];

initial begin
	q = { 1, 2, 3, 4 };
	q = { q[0:1], 10, q[2:$] }; // q.insert(2, 10)
	$display(":assert: (%d == 5)", q.size);
	$display(":assert: (%d == 10)", q[2]);
end

endmodule
