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
# Syntax: force signalname value1 time1, value2 time2,…
# e.g.
# force signal_x 0 0ns, 1 10ns, 0 30ns, Z 100ns
# use s, us, ms, ns, ps, fs as timescale
# To override the signal of a driver use –freeze
# default timescale is ps
#‘-r’ is used for repetition

#------------------RUN SIMULATION HERE---------------

#pepare clk signal
force clockdivider/clk_in 1 0, 0 1ps -repeat 2ps



#and now run the simulation for 1,5ns
run 1500 ps
