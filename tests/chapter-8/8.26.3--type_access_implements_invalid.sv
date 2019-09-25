/*
:name: type_access_implements_invalid
:description: access types from implemented class
:should_fail: 1
:tags: 8.26.3
*/
module class_tb ();
	interface class ihello;
		typedef int int_t;
		pure virtual function void hello(int_t val);
	endclass
	
	class Hello implements ihello;
		virtual function void hello(int_t val);
			$display("hello world %d", val);
		endfunction
	endclass

	Hello obj;

	initial begin
		obj = new;
		obj.hello();
	end
endmodule
