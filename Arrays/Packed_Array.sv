// packed array

module packed_array_bit_access;

  bit [7:0] data;

  initial begin
   foreach(data[i]) begin
      
     data[i] = (i + 1);
      
     $display(" packed data[%0d] = %d ", i, data[i] );
      
    end
  end

endmodule
