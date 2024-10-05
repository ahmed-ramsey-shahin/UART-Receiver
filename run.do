vlib work
vlog *.*v
vsim -voptargs=+acc work.UART_RX_Tb
do wave.do
run -all
