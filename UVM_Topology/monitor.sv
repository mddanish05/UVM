class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  extern function new(string name="monitor",uvm_component parent);
    
endclass
    function monitor::new(string name="monitor", uvm_component parent);
      super.new(name,parent);
    endfunction
