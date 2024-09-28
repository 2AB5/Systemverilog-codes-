 /*
19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 2 
 Roll no - CB.EN.U4ECE20101
 Change history: 02/10/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/
/*
 Descrpition:
	oWrite code for any state machine using enumerated type for state names and display the state names

*/

module enum_state(input clk, resetn, enable);
    typedef enum reg[1:0] { IDLE, SETUP, ACCESS } state;
    state cur_state, nxt_state;

    always @(posedge clk) begin
        if(!resetn) begin
            cur_state <= IDLE;
        end
        else begin
            $display("%0t Switching to %s...", $time(), nxt_state.name());
            cur_state <= nxt_state;
        end
    end

    always @(*) begin
        case (cur_state)
            IDLE:
            begin
                $display("IDLE state");
                if(enable)
                    nxt_state = SETUP;
            end
            SETUP:
            begin
                $display("SETUP state");
                if(enable)
                    nxt_state = ACCESS;
            end
            ACCESS:
            begin
                $display("ACCESS state");
                if(enable)
                    nxt_state = IDLE;
            end
        endcase
    end
endmodule

module tb();
    bit clk, resetn, enable;
    enum_state dut(clk, resetn, enable);

    initial begin
        forever #10 clk = ~clk;
    end

    initial begin
        resetn = 0;
        enable = 0;
        #40 resetn = 1;
        enable = 1;
    end
endmodule

