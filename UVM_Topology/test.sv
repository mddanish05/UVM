class test extends uvm_test;
  env env1;
  `uvm_component_utils(test)
  
  extern function new(string name="test",uvm_component parent);
    extern function void build_phase(uvm_phase phase);
      
endclass
      
      function test::new(string name="test",uvm_component parent);
        super.new(name ,parent);
      endfunction 
      
      function void test::build_phase(uvm_phase phase);
        super.build_phase(phase);
        env1=env::type_id::create("env1",this);
      endfunction
