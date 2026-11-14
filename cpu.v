//code your design here
module cpu(input clk,
          input reset,
           output reg [7:0] out_port
          );
  reg [7:0] pc;
  reg [7:0] acc;
  reg [7:0] ir;
  reg [7:0] state;
  
  reg [7:0] ram [0:255];
  
  initial begin 
    $readmemh("program.mem",ram);
  end
  
  always@(posedge clk or posedge reset)begin
    if(reset) begin
      pc<=8'h00;//(<= is for non blocking)
      acc<=8'h00;
      out_port<=8'h00;
      state<=0;//fetch
    end else begin 
      case(state)
        0: begin //0 is for fetch
          ir<=ram[pc];// ram-> ir ->acc and pc(pc for address and acc for arthemetic operations)
          pc<=pc+1;
          state<=1;//execute
        end
        1: begin
          case(ir[7:4])
            4'h1:acc<=ram [ir[3:0]];//load
            4'h2:acc<=acc+ram[ir[3:0]];//add
            4'h3:out_port<=acc;//output
            4'h4:pc<=pc-1;//halt
          endcase
          state<=0;
        end
      endcase
          
    end
            
  end  
        
endmodule
