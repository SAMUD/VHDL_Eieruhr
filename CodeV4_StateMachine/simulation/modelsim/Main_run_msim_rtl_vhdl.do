transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/FallingEdge.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/Counter.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/main.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/statemachine.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/clockdivider.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/convertintbcd.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/decoder.vhd}
vcom -2008 -work work {D:/OneDrive/Studium/Offenburg/Sem7/HDL/VHDL_Eieruhr/CodeV4_StateMachine/buzzer.vhd}

