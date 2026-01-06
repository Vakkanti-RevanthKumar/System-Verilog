// without constructor

class animal;
  string name;
  
  function void display();
    $display(" animal name is %s", name);
  endfunction
endclass

module test;
  
  animal a;
  
  initial begin
    a = new();
    a.name = "dog";
    a.display();
  end
endmodule


// with constructor

class number;
  int n;
  
  function new(int num);
    n = num;
  endfunction
  
  function void display();
    $display(" number is %0d ", n);
  endfunction
  
endclass

module test1;
  number nu;
  
  initial begin
    
    nu = new(5);
    nu.display();
    nu = new(6);
    nu.display();
  end
endmodule



