onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/TX_CLK
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/RX_CLK
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/RST_tb
add wave -noupdate -expand -group TB -color {Slate Blue} -radix binary /UART_RX_Tb/test_data
add wave -noupdate -expand -group TB -radix unsigned /UART_RX_Tb/prescale_tb
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/PAR_EN_tb
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/PAR_TYP_tb
add wave -noupdate -expand -group TB -radix binary /UART_RX_Tb/RX_IN_tb
add wave -noupdate -expand -group TB -color Magenta -radix binary /UART_RX_Tb/P_DATA_tb
add wave -noupdate -expand -group TB -color Magenta -radix binary /UART_RX_Tb/data_valid_tb
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/CLK
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/RST
add wave -noupdate -expand -group UART_RX -radix unsigned /UART_RX_Tb/DUT/prescale
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/PAR_EN
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/PAR_TYP
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/RX_IN
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/edge_bit_cnt_en
add wave -noupdate -expand -group UART_RX -radix unsigned /UART_RX_Tb/DUT/edge_cnt
add wave -noupdate -expand -group UART_RX -radix unsigned /UART_RX_Tb/DUT/bit_cnt
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/dat_samp_en
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/sampled_bit
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/strt_chk_en
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/strt_glitch
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/par_chk_en
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/par_err
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/stp_chk_en
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/stp_err
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/deser_en
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/P_DATA
add wave -noupdate -expand -group UART_RX -radix binary /UART_RX_Tb/DUT/data_valid
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/CLK
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/RST
add wave -noupdate -expand -group FSM -radix unsigned /UART_RX_Tb/DUT/fsm/prescale
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/edge_bit_cnt_en
add wave -noupdate -expand -group FSM -radix unsigned /UART_RX_Tb/DUT/fsm/edge_cnt
add wave -noupdate -expand -group FSM -radix unsigned /UART_RX_Tb/DUT/fsm/bit_cnt
add wave -noupdate -expand -group FSM -radix unsigned /UART_RX_Tb/DUT/fsm/previous_bit_cnt
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/PAR_EN
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/RX_IN
add wave -noupdate -expand -group FSM -color Gray60 -radix binary /UART_RX_Tb/DUT/fsm/current_state
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/next_state
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/strt_chk_en
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/strt_glitch
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/dat_samp_en
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/deser_en
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/par_chk_en
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/par_err
add wave -noupdate -expand -group FSM -color {Orange Red} -radix binary /UART_RX_Tb/DUT/fsm/stp_chk_en
add wave -noupdate -expand -group FSM -color {Light Blue} -radix binary /UART_RX_Tb/DUT/fsm/stp_err
add wave -noupdate -expand -group FSM -radix binary /UART_RX_Tb/DUT/fsm/data_valid
add wave -noupdate -expand -group data_sampling -radix binary /UART_RX_Tb/DUT/ds/CLK
add wave -noupdate -expand -group data_sampling -radix binary /UART_RX_Tb/DUT/ds/RST
add wave -noupdate -expand -group data_sampling -radix binary /UART_RX_Tb/DUT/ds/dat_samp_en
add wave -noupdate -expand -group data_sampling -radix unsigned /UART_RX_Tb/DUT/ds/prescale
add wave -noupdate -expand -group data_sampling -radix unsigned /UART_RX_Tb/DUT/ds/edge_cnt
add wave -noupdate -expand -group data_sampling -color {Violet Red} -radix binary /UART_RX_Tb/DUT/ds/RX_IN
add wave -noupdate -expand -group data_sampling -color {Cornflower Blue} -radix binary /UART_RX_Tb/DUT/ds/first_bit
add wave -noupdate -expand -group data_sampling -color {Dark Orchid} -radix binary /UART_RX_Tb/DUT/ds/second_bit
add wave -noupdate -expand -group data_sampling -color {Slate Blue} -radix binary /UART_RX_Tb/DUT/ds/third_bit
add wave -noupdate -expand -group data_sampling -color Gold -radix binary /UART_RX_Tb/DUT/ds/sampled_bit
add wave -noupdate -expand -group deserializer -radix binary /UART_RX_Tb/DUT/des/CLK
add wave -noupdate -expand -group deserializer -radix binary /UART_RX_Tb/DUT/des/RST
add wave -noupdate -expand -group deserializer -radix binary /UART_RX_Tb/DUT/des/deser_en
add wave -noupdate -expand -group deserializer -radix binary /UART_RX_Tb/DUT/des/sampled_bit
add wave -noupdate -expand -group deserializer -radix binary /UART_RX_Tb/DUT/des/P_DATA
add wave -noupdate -expand -group edge_bit_counter -radix binary /UART_RX_Tb/DUT/ebc/CLK
add wave -noupdate -expand -group edge_bit_counter -radix binary /UART_RX_Tb/DUT/ebc/RST
add wave -noupdate -expand -group edge_bit_counter -radix binary /UART_RX_Tb/DUT/ebc/enable
add wave -noupdate -expand -group edge_bit_counter -radix unsigned /UART_RX_Tb/DUT/ebc/prescale
add wave -noupdate -expand -group edge_bit_counter -radix unsigned /UART_RX_Tb/DUT/ebc/edge_cnt
add wave -noupdate -expand -group edge_bit_counter -radix unsigned /UART_RX_Tb/DUT/ebc/bit_cnt
add wave -noupdate -expand -group strt_check -radix binary /UART_RX_Tb/DUT/strtc/CLK
add wave -noupdate -expand -group strt_check -radix binary /UART_RX_Tb/DUT/strtc/RST
add wave -noupdate -expand -group strt_check -radix binary /UART_RX_Tb/DUT/strtc/strt_chk_en
add wave -noupdate -expand -group strt_check -radix binary /UART_RX_Tb/DUT/strtc/sampled_bit
add wave -noupdate -expand -group strt_check -radix binary /UART_RX_Tb/DUT/strtc/strt_glitch
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/CLK
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/RST
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/par_chk_en
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/PAR_TYP
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/sampled_bit
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/P_DATA
add wave -noupdate -expand -group parity_check -radix binary /UART_RX_Tb/DUT/pc/par_err
add wave -noupdate -expand -group stop_check -radix binary /UART_RX_Tb/DUT/stpc/CLK
add wave -noupdate -expand -group stop_check -radix binary /UART_RX_Tb/DUT/stpc/RST
add wave -noupdate -expand -group stop_check -radix binary /UART_RX_Tb/DUT/stpc/stp_chk_en
add wave -noupdate -expand -group stop_check -radix binary /UART_RX_Tb/DUT/stpc/sampled_bit
add wave -noupdate -expand -group stop_check -radix binary /UART_RX_Tb/DUT/stpc/stp_err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {601985125 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1403645905 ps}
