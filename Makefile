tarea: testbench.v ondas_tarea1.gtkw
	iverilog testbench.v
	vvp a.out
	gtkwave ondas_tarea1.gtkw

