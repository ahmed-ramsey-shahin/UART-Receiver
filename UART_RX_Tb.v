`timescale 1ns/1ps

module UART_RX_Tb ();
    reg         RX_CLK = 'd0;
    reg         TX_CLK = 'd0;
    reg         RST_tb;
    reg  [05:0] prescale_tb;
    reg         RX_IN_tb;
    reg         PAR_EN_tb;
    reg         PAR_TYP_tb;
    reg  [10:0] test_data;
    wire [07:0] P_DATA_tb;
    wire        data_valid_tb;
    integer     test_case_number;
    integer     loop_index;
    integer     loop_index_2;

    UART_RX DUT (
        .CLK(RX_CLK),
        .RST(RST_tb),
        .RX_IN(RX_IN_tb),
        .PAR_EN(PAR_EN_tb),
        .PAR_TYP(PAR_TYP_tb),
        .prescale(prescale_tb),
        .P_DATA(P_DATA_tb),
        .data_valid(data_valid_tb)
    );

    always begin
        case (prescale_tb)
            6'd4:    RX_CLK = #1085.069445 ~RX_CLK;
            6'd8:    RX_CLK = #542.53472   ~RX_CLK;
            6'd16:   RX_CLK = #271.2967985 ~RX_CLK;
            6'd32:   RX_CLK = #135.6483995 ~RX_CLK;
            default: RX_CLK = #542.53472   ~RX_CLK;
        endcase
    end

    always begin
        TX_CLK = #4340.27778 ~TX_CLK;
    end

    initial begin
        reset();
        $display("----------------------------------------");
        for (loop_index_2 = 4; loop_index_2 <= 32; loop_index_2 = loop_index_2 * 2) begin
            prescale_tb = loop_index_2;
            perform_test_case(1'b0, 1'b1);
            $display("----------------------------------------");
            perform_test_case(1'b1, 1'b0);
            $display("----------------------------------------");
            perform_test_case(1'b1, 1'b1);
            $display("----------------------------------------");
        end
        // prescale_tb = 6'd4;
        // perform_test_case(1'b0, 1'b0);
        // $stop;
        @(negedge TX_CLK) @(negedge TX_CLK) $stop;
    end

    task reset;
        begin
            test_case_number = 0;
            RST_tb           = 1'b0;
            RX_IN_tb         = 1'b1;
            PAR_EN_tb        = 1'b0;
            PAR_TYP_tb       = 1'b0;
            prescale_tb      = 6'd8;
            test_data        = 11'd0;
            #2;
            RST_tb           = 1'b1;
        end
    endtask

    task generate_random_data;
        input parity_enabled;
        input parity_type;
        begin
            test_data[10]  = 1'b0;
            test_data[9:2] = $random % 2**8;
            PAR_EN_tb      = parity_enabled;
            PAR_TYP_tb     = parity_type;
            test_data[0]   = 1'b1;
            
            if (PAR_EN_tb) begin
                if (PAR_TYP_tb) begin
                    test_data[1] = ~^test_data[9:2];
                end
                else begin
                    test_data[1] = ^test_data[9:2];
                end
            end
            else begin
                test_data[1] = 1'b1;
            end
        end
    endtask

    task transmit_test_data;
        input parity_enabled;
        begin
            for (loop_index = 10; loop_index >= (parity_enabled ? 0 : 1); loop_index = loop_index - 1) begin
                @(posedge TX_CLK) RX_IN_tb = test_data[loop_index];
            end
        end
    endtask

    task check_output;
        reg [7:0] reversed_data;
        begin
            for (loop_index = 0; loop_index < 8; loop_index = loop_index + 1) begin
                reversed_data[loop_index] = test_data[9-loop_index];
            end

            if (P_DATA_tb[7:0] == reversed_data[7:0]) begin
                $display("Test Case Passed, Expected: %b, Received: %b", reversed_data[7:0], P_DATA_tb[7:0]);
            end
            else begin
                $display("Test Case Failed, Expected: %b, Received: %b", reversed_data[7:0], P_DATA_tb[7:0]);
            end
        end
    endtask

    task perform_test_case;
        input parity_enabled;
        input parity_type;
        begin
            test_case_number = test_case_number + 1;

            if (parity_enabled) begin
                if (parity_type) begin
                    $display("Test Case %2d: Prescale = %2d, Parity Enabled, Odd Parity", test_case_number, prescale_tb);
                end
                else begin
                    $display("Test Case %2d: Prescale = %2d, Parity Enabled, Even Parity", test_case_number, prescale_tb);
                end
            end
            else begin
                $display("Test Case %2d: Prescale = %2d, Parity Disabled", test_case_number, prescale_tb);
            end

            generate_random_data(parity_enabled, parity_type);
            transmit_test_data(parity_enabled);
            wait (data_valid_tb) @(negedge TX_CLK) @(negedge TX_CLK);
            // repeat (15) @(negedge TX_CLK);
            check_output();
        end
    endtask
endmodule
