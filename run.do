
#=======================================
# C R E A T E / S E T  'work' lib
#--------------------------------
vlib work

#--------------------------------------------------
# To compile with bug in RTL that is caught by CHECK # 1
# CHECK #1. Check that on reset rd_ptr=0; wr_ptr=0; cnt=0; fifo_empty=1 and fifo_full=0
#--------------------------------------------------
#vlog -sv fifo.v fifo_property.sv test_fifo.sv +define+check1+check2+check3+check4+check5+check6
alog -sv -dbg fifo.v fifo_property.sv test_fifo.sv +define+check1+check2+check3+check4+check5+check6

#--------------------------------------------------
#To Simulate 
#--------------------------------------------------
vsim -assertdebug -rpt -coverage -c test_fifo -l test_fifo_check1.log -do -run -all
asim -assertdebug -rpt -coverage -c test_fifo -l test_fifo_check1.log -do -run -all
