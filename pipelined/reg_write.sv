module reg_fetch #(
    parameter DATA_WIDTH =32;
)(  
    input logic                    clk,     
    input logic [2:0]              RegWriteM,
    input logic [1:0]              ResultSrcM,
    input logic [4:0]              RdM,
    input logic [DATA_WIDTH-1:0]   WriteDataM,
    input logic [DATA_WIDTH-1:0]   ReadDataM,
    input logic [DATA_WIDTH-1:0]   PCPlusM,

    output logic [2:0]              RegWriteW,
    output logic [1:0]              ResultSrcW,
    output logic [4:0]              RdW,
    output logic [DATA_WIDTH-1:0]   WriteDataW,
    output logic [DATA_WIDTH-1:0]   ReadDataW,
    output logic [DATA_WIDTH-1:0]   PCPlusW
    

    always_ff @(posedge clk) begin
        RegWriteW   <=      RegWriteM;
        ResultSrcW  <=      ResultSrcM;
        RdW         <=      RdM;
        WriteDataW  <=      WriteDataM;
        ReadDataW   <=      ReadDataM;
        PCPlus4W    <=      PCPlus4M;
    end
      
);
endmodule