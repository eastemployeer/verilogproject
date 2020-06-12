`timescale 1ns / 1ps 

module generator;
reg  [5:0] ii;
reg  [5:0] jj;
reg  [6:0] ssum;
integer i;
integer j;
integer sum;
integer f;

initial begin

  f = $fopen("data.txt","w+");

 

  ii = 0;
  jj = 0;
  ssum = 0;
  for (i=0; i<64; i=i+1) begin
    for (j=0; j<64; j=j+1) begin
     

      ssum = ii + jj;
      $fwrite (f, "%b%b%b\n", ii,jj,ssum);
      jj = jj+1;
    end
  ii = ii+1;
  end

  $fclose(f); 

  end
endmodule