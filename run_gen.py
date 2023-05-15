from MAxPy import maxpy

circuit_list = [
    "LOBA0",
    #"LOBA1",
    #"LOBA2",
    #"LOBA3",
    ]

for circuit_name in circuit_list:
    circuit = maxpy.AxCircuit(top_name=circuit_name)

    #circuit.rtl2py()

    circuit.set_synth_tool("yosys")
    circuit.rtl2py(target="yosys")
