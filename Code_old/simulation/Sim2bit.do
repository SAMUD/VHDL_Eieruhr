######################################
# Do File by Samuel Daurat [178190]  #
# 30.10.17							 #
######################################

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
force clk 1 0, 0 10ps -repeat 20ps

#reset whole system and set up/down as 0
force reset 0 0, 1 50ps
force up 0 0
force down 0 0

#count up
force up 1 200ps, 0 500ps

#start counting down
force down 1 700ps, 0 800ps

#reset again to show reset is working
force reset 0 1200ps, 1 1300ps

#and now run the simulation for 1,5ns
run 1500ps
