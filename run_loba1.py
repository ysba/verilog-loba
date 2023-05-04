from MAxPy import maxpy
circuit = maxpy.AxCircuit(top_name="loba1")
#circuit.set_synth_tool("yosys")
circuit.rtl2py(target="exact")
