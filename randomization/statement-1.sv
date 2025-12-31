/* 
There is a variable 1,2,3,4 with 8 bit. Variable 1 and 2 must generate even values between 0 to 100. 
Variable 3 and 4 must generate odd values between 100 to 200. So how can you do the randomization?

EDA PLAYGROUND - https://edaplayground.com/x/jq_q 
*/


class rand_vars;
  
  randc bit [7:0] v1, v2, v3, v4;
  
  constraint even_val { 
    v1 inside {[0:100]};
    v1 % 2 == 0;
    v2 inside {[0:100]};
    v2 % 2 == 0;
  }
  
  constraint odd_val {
    v3 inside {[100:200]};
    v3 % 2 == 1;
    v4 inside {[100:200]};
    v4 % 2 == 1;
    
  }
  
endclass


module randomi;
  
  rand_vars ra;
  
  initial begin
    
    ra = new();
    
    repeat(5) begin
      ra.randomize();
      $display(" var1 = %0d | var2 = %0d | var3 = %0d | var4 = %0d", ra.v1,ra.v2,ra.v3,ra.v4);
    end
    
  end
endmodule
