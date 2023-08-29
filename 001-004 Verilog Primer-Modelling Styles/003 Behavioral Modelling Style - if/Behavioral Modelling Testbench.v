`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Behavioral Modeling style
//Module  : Behavioral_Modelling_Testbench_mux2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Behavioral_Modelling_Testbench_mux2x1();
//variable or port declaration
reg x1,x2,s;
wire f;

//Instantiation Module Under Test
Behavior_Modelling_If uut(x1,x2,s,f);

//Monitoring the values
initial begin
    $monitor("s=%b  |  x1=%b  |  x2=%b  |  f=%b",s,x1,x2,f);
end

//generating the stimuli
initial begin
    s=1'b0;x1=1'b0;x2=1'b0;
    #5 x1=1'b1;
    #5 x1=1'b0;
    #5 x1=1'b1;
    #5 x2=1'b1;
    #5 x2=1'b0;
    #5 s=1'b1;
    #5 x2=1'b1;
    #5 x2=1'b0;
    #5 x1=1'b0;
    #5 $finish;
end

endmodule





 
