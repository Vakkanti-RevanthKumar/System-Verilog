/*
can u write a single constraints to generate random values for 8-bit variable which is a range of 
  1 to 34, 127, 129 to 156, 190 to 202, 257 to 260. all these values must be generate only using single constraint?
*/

// Note: The range 257 to 260 is NOT possible with 8-bit.

// EDA PLAYGROUND: https://edaplayground.com/x/ajw9 

class single_constraint;
  
  rand bit [7:0] vars;
  
  constraint c1{
    vars inside {
      [1:34], 
      127, 
      [129:156], 
      [190:202]
    };
  }
    
endclass
    
module single;
  
  single_constraint co;
  
  initial begin
    
    co = new();
    
    repeat(5) begin
      
      co.randomize();
      
      $display(" vars = %0d ", co.vars);
    end
  end
endmodule
    

