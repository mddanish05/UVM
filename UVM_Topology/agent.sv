class agent extends uvm_agent;
  `uvm_component_utils(agent)
    driver drv;
    sequencer sqncr;
    monitor mntr;
    
    extern function new(string name="agent",uvm_component parent);
      extern function void build_phase(uvm_phase phase);
        extern function void connect_phase(uvm_phase phase);
      
    
endclass
          function agent::new(string name="agent",uvm_component parent);
            super.new(name,parent);
          endfunction 
          
          function void agent::build_phase(uvm_phase phase);
            super.build_phase(phase);
            drv=driver::type_id::create("drv",this);
            sqncr=sequencer::type_id::create("sqncr",this);
            mntr=monitor::type_id::create("mntr",this);
          endfunction 
          function void agent::connect_phase(uvm_phase phase);
            drv.seq_item_port.connect(sqncr.seq_item_export);
            
          endfunction
