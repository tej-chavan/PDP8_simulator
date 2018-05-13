module FPLOAD_test ();


reg [31:0] FP_AC;

  reg [11:0] Mem [2:0] = '{12'h000,12'hA00,12'h081} ; // 4K memory

	bit [1:0] PC;

	task FPLOAD;
		begin
			//Decode
			FP_AC[31] 	  = Mem[PC+1][11];
			FP_AC[30:23]  = Mem[PC][7:0];
			FP_AC[22:0]   = {Mem[PC+1][10:0],Mem[PC+2]};
		end
	endtask


initial
begin
	FPLOAD();
  	$display("Hex = %h, and in Oct L1 : %o \n Oct L2 : %o \n Oct L3 : %o \n",FP_AC,Mem[0],Mem[1],Mem[2]);
end
  
  endmodule