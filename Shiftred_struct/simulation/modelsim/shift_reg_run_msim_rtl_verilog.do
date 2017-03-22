transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+K:/Verilog\ Projects/Shiftred_struct {K:/Verilog Projects/Shiftred_struct/shift_reg.v}

