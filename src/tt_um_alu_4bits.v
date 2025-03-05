/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_alu_4bits (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  alu_4bits A1 (
        .A(ui_in[3:0]),
        .B(ui_in[7:4]),
        .sel(uio_in[2:0]),
        .result(uo_out[7:0]),
        .carry(uio_out[0]),
        .zero(uio_out[1])
    );


  // All output pins must be assigned. If not used, assign to 0.

  assign uio_out[7:2]= 6'b000000;
  assign uio_oe[7:0]= 8'b00000000;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, uio_in[7:3]};

endmodule
