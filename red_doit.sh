rm -rf obj_dir
rm -f Vred_top.vcd

verilator --Wall --cc red_top.v --exe red_top_tb.cpp

make -j -C obj_dir/ -f Vred_top.mk Vred_top