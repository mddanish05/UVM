//`include "uvm_macros.svh"
`include "testbench_pkg.sv"

module tb();
  import uvm_pkg::*;
  import testb_pkg::*;
  
  initial
    begin
      run_test("test");
    end
endmodule
