from MAxPy import maxpy

circuit_list = [
    "LOBA0_16_4",
    "LOBA1_16_4",
    "LOBA2_16_4",
    "LOBA3_16_4",
    ]

for circuit_name in circuit_list:
    circuit = maxpy.AxCircuit(top_name=circuit_name)
    circuit.set_synth_tool("yosys")
    circuit.rtl2py(target="none")
