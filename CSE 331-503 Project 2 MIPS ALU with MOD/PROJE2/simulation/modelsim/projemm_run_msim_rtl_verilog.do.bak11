transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/xor_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/and_3bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/or_3bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/or_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/and_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/or_5bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/and_5bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/adder_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/adder_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/sub_add_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/nor_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/or_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/and_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/xor_32bit_to_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/LessThan32Bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/and_32bit_to_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/adder_16bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mod_cu.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/comparator_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mod_dp.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mod.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/alu_32.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mux2_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mux4_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mux8_to_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/mux_32.v}

vlog -vlog01compat -work work +incdir+C:/Users/LENOVO/Desktop/quartus/arife {C:/Users/LENOVO/Desktop/quartus/arife/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
