from MAxPy import maxpy

ckt_list = [
    "loba0",
    "loba1",
    "loba2",
    "loba3"
    ]

for ckt_name in ckt_list:
    circuit = maxpy.AxCircuit(top_name=ckt_name)
    circuit.rtl2py(target="exact")
