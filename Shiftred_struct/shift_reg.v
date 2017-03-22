// structual shift register

module D_FF(
D,
CLK,
RESET,
Q,
);
input D,CLK,RESET;
output Q;
reg Q;
always @ (posedge CLK)
if (RESET)
begin
Q <=0;
end
else if (~RESET)
begin 
Q <= D;
end
endmodule 
module shift_reg(
Data,
CLK,
RESET,
OP,
ll_in,
ll_out,
Qout,
);
input Data,CLK,RESET,OP;
input [3:0] ll_in;
output Qout;
output [3:0] ll_out; 
wire Q1;
wire Q2;
wire Q3;
//wire Q4;
//always @(posedge CLK)
//if(OP==0)
begin
D_FF ff1(Data,CLK,RESET,Q1);
D_FF ff2(Q1,CLK,RESET,Q2);
D_FF ff3(Q2,CLK,RESET,Q3);
D_FF ff4(Q3,CLK,RESET,Qout);
end
endmodule 