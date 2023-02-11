class env extends uvm_env;
  `uvm_component_utils(env)
  agent agnt;
  extern function new(string name="env",uvm_component parent);
    extern function void build_phase(uvm_phase phase);
      extern task run_phase(uvm_phase phase);
endclass
        
        function env::new(string name="env",uvm_component parent);
          super.new(name ,parent);
        endfunction
        
        function void env::build_phase(uvm_phase phase);
          super.build_phase(phase);
          agnt=agent::type_id::create("agnt",this);
        endfunction 
        
        task env::run_phase(uvm_phase phase);
          uvm_top.print_topology();
        endtask
