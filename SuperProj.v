module SuperProj
  (input  CLK,
   output LED);
  reg [19:0] counter;
  wire [31:0] n5_o;
  wire n7_o;
  wire [31:0] n8_o;
  wire [31:0] n10_o;
  wire [19:0] n11_o;
  wire n12_o;
  wire n13_o;
  wire [19:0] n15_o;
  reg [19:0] n19_q;
  reg n20_q;
  assign LED = n20_q;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:13:11  */
  always @*
    counter = n19_q; // (isignal)
  initial
    counter = 20'b00000000000000000000;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:19:21  */
  assign n5_o = {12'b0, counter};  //  uext
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:19:21  */
  assign n7_o = $signed(n5_o) < $signed(32'b00000000000011110100001001000000);
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:20:32  */
  assign n8_o = {12'b0, counter};  //  uext
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:20:32  */
  assign n10_o = n8_o + 32'b00000000000000000000000000000001;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:20:24  */
  assign n11_o = n10_o[19:0];  // trunc
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:23:20  */
  assign n12_o = ~n20_q;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:19:10  */
  assign n13_o = n7_o ? n20_q : n12_o;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:19:10  */
  assign n15_o = n7_o ? n11_o : 20'b00000000000000000000;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:18:7  */
  always @(posedge CLK)
    n19_q <= n15_o;
  initial
    n19_q = 20'b00000000000000000000;
  /* /home/hendrik/OneWareStudio/Projects/NewTest/SuperProj.vhd:18:7  */
  always @(posedge CLK)
    n20_q <= n13_o;
  initial
    n20_q = 1'b0;
endmodule
