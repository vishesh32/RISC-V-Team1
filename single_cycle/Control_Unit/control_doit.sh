rm -rf obj_dir
rm -f Vcontrol_top.vcd

verilator --Wall --cc --trace control_top.sv --exe control_top_tb.cpp

make -j -C obj_dir/ -f Vcontrol_top.mk Vcontrol_top

obj_dir/Vcontrol_top