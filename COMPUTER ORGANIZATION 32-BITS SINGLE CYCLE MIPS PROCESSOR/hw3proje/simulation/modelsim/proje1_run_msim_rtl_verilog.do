transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/xor_32bit_to_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/sub_add_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/or_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/or_5bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/or_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/or_3bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux8_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux4_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux_32.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/LessThan32Bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/and_32bit_to_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/and_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/and_5bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/and_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/and_3bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/adder_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/adder_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/adder_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mips.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/alu_control.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/sign_extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux_5bit_2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/mux32bit_2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/extend32.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/register_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/instruction_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/memory_block.v}

vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/hw3proje {C:/Users/LENOVO/Desktop/quartus/hw3proje/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
