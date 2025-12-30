// >> Vs >>>

module shift;
  
  reg [3:0] a,b;
  reg c;
  reg [3:0] d;
  
  initial begin
    
    a = 4'b1010;
    
    $display(" a = %0b ", a);
    $display(" a >> 1 = %0b ", a >> 1);
    $display(" a >>> 1 = %0b ", a >>> 1);
    
  end
endmodule

// && Vs &
    
module logic_bit;
  reg [3:0] a,b;
  reg c;
  reg [3:0] d;
  
  initial begin
    
    a = 4'b1011;
    b = 4'b0101;
    b = 4'b0000;
    
    c = a && b;
    d = a & b;
    
    $display(" a = %0b ", a);
    $display(" b = %0b ", b);
    $display(" c = %0b ", c);
    $display(" d = %0b ", d);
  end
endmodule

// output a ?

module byte_example;
  byte a;

  initial begin
    a = 4'b101x;

    $display("byte a = %b", a);

    $finish;
  end
endmodule

// == Vs ===

module equality;
  
  reg [3:0] a, b;
  reg out, out1;

  initial begin
    a = 4'b1zx1;
    b = 4'b1zx1;

    out = (a === b);
    out1 = (a == b);

    $display("a        = %b", a);
    $display("b        = %b", b);
    $display("a === b  = %b", out);
    $display("a == b  = %b", out1);

    $finish;
  end
endmodule
