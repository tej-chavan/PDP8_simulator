run:
	vlib work
	vlog +define+OBJFILENAME=\"../assembler/add01.mem\" -work work ../simulator/pdp8.v
	vsim -c PDP8 -do "run -all; quit"
clean:
	rm -rf work transcript vsim.wlf
