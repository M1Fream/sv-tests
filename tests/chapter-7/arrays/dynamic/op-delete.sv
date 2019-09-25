/*
:name: dynamic-arrays-op-delete
:description: Test dynamic arrays operator delete support
:should_fail: 0
:tags: 7.5.3
*/
module top ();

bit [7:0] arr[];

initial begin
    arr = new [ 16 ];
    $display(":assert: (%d == 16)", arr.size);
    arr.delete;
    $display(":assert: (%d == 0)", arr.size);
end

endmodule
