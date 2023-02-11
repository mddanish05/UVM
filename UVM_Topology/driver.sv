class driver extends uvm_driver;
  `uvm_component_utils(driver)
  extern function new(string name="driver",uvm_component parent);
    
endclass
    function driver::new(string name="driver",uvm_component parent);
      super.new(name,parent);
    endfunction 
