\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   /* verilator lint_on WIDTH */ 
   m4_include_lib(['https://raw.githubusercontent.com/stevehoover/LF-Building-a-RISC-V-CPU-Core/main/lib/calc_viz.tlv']).
\TLV
   
   $val1[31:0] = {26'b0 , $val1_rand[5:0]} ;
   $val2[31:0] = {28'b0 , $val2_rand[3:0]} ;
   
   $sum[31:0] =  $val1[31:0] + $val2[31:0];
   $diff[31:0] =  $val1 - $val2;
   $prod[31:0] =  $val1 * $val2;
   $quot[31:0] =  $val1 / $val2;
   
   $out[31:0] = $op[1:0] == 2'b00 ? $sum :
                $op == 2'b01 ? $diff : 
                $op == 2'b10 ? $prod :
                              $quot ; //default
   
   m4+calc_viz()
   
\SV
   endmodule
