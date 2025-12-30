/* Data, which is of 4-bit size. And Address variable is also 4-bit size. Now, I'm doing some flag , which is also a 4-bit size, is equal to address plus data.
So data I have assigned as 15. Address as a 13.Now, what value will be stored in the flag?  */


module flag_ex;
  
  logic [3:0] data, addr, flag;
  
  initial begin
    
    data = 4'd15;
    addr = 4'd13;
    
    flag = data + addr; //28
    
    $display(" flag = %0b ", flag); // 12
  end
endmodule

/* If we want to store the correct value into the flag, what we need to do? 
We need to increase the size of the flag. 
Can you increase the size of the flag using dynamic array concept? */

// NOTE: First, you need to declare a flag as a 4 bit. Whenever we are trying to store the 28 value in flag, it doesn't store that value. So we need to resize the array with a 5 bit.

module flage_ex1;
  
  bit [3:0] data, addr;
  
  bit flag[];
  
  int sum;
    
  initial begin
    data = 4'd15;
    addr = 4'd13;
    
    sum = data + addr; // 28
    
    flag = new[4];
   

    foreach(flag[i])
      flag[i] = sum[i];
    
       
    $display("before sum = %0b", sum); // 11100
    $display("before Flag = %0p", flag); // 1100
    
    flag = new[5]; 
    
    for ( int i = 0; i < flag.size(); i++)
      flag[i] = sum[i];
 
    $display("after sum = %0b", sum); // 11100
    $display("after Flag = %0p", flag); // 11100
    
    
  end
endmodule


/* OUTPUT -   # KERNEL: before sum = 11100
              # KERNEL: before Flag = 0 0 1 1
              # KERNEL: after sum = 11100
              # KERNEL: after Flag = 0 0 1 1 1  */

// https://edaplayground.com/x/9ZNq
    
  

