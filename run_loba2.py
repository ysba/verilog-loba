from MAxPy import maxpy
circuit = maxpy.AxCircuit(top_name="loba2")
#circuit.set_synth_tool("yosys")
circuit.rtl2py(target="exact")
