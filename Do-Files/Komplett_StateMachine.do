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
#force clk_deci_i 1 0, 0 10ps -repeat 20ps

#set reset on the beginning
force reset 1 0, 0 30ps

#simulate 1button press
force BtnSec 0 0, 1 40ps, 0 41ps, 1 50ps, 0 70ps
force BtnMin 0 0, 1 100ps, 0 130ps

#now start counting
force SW3 1 0,0 150ps
force BtnStart 0 0, 1 160ps, 0 161ps

#wait while it is counting
#now simulate counting finished
force SW3 1 250ps



#and now run the simulation for 1,5ns
run 3500 ps
