import uvm_pkg::*;
`include "uvm_macros.svh"
`include "design.v"
`include "interface.sv"
`include "package.sv"
import one::*;
module tb;
mul_if mif();

multiplier dut (.a(mif.a), .b(mif.b), .y(mif.y));

initial 
begin
  uvm_config_db #(virtual mul_if)::set(null, "*", "mif", mif);
  run_test("test"); 
end

initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
end
endmodule
