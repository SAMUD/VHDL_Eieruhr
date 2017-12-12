######################################
# Do File by Samuel Daurat [178190]  #
# 05.12.17							 #
######################################

#This file is used to test Converting INT to BCD.
#Files used:	CovertIntBcd.vhd / Decoder.vhd 

# -- Restart Simulation
restart -force -nolist -nowave -nobreak -nolog
onerror {resume}

#--log all waves including the not shown ones
log -r /*

# Add the waves needed to be displayed
# Two ways can be used to add signals
# either each signal by its name and path
# or use add wave /*
add wave /*


#--------------------FORCE SIGNALS HERE ---------
# Syntax: force signalname value1 time1, value2 time2,�
# e.g.
# force signal_x 0 0ns, 1 10ns, 0 30ns, Z 100ns
# use s, us, ms, ns, ps, fs as timescale
# To override the signal of a driver use �freeze
# default timescale is ps
#�-r� is used for repetition

#------------------RUN SIMULATION HERE---------------

#pepare clk signal
force clk 1 0, 0 1ps -repeat 2ps
force clk_Deci 1 0, 0 15ps -repeat 30ps

#set reset on the beginning
force reset 1 0, 0 100ps

#simulate 1button press
force BtnSec 0 0, 1 140ps, 0 141ps, 1 160ps, 0 170ps
force BtnMin 0 0, 1 200ps, 0 230ps
force BtnStart 0 0, 1 250ps, 0 260ps


#and now run the simulation for 1,5ns
run 500 ps
