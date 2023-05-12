import importlib

def testbench_run(ckt=None, results_filename=None):

    A = "0100100011111001"
    B = "0011000011101010"


    axm = ckt.top()

    axm.set_A(int(A,2))
    axm.set_B(int(B,2))
    axm.eval()
    #print(bin(axm.get_P()))
    print(axm.get_P())


if __name__ == "__main__":
    mod_list = [
        #"LOBA0.LOBA0",
        #"LOBA1.LOBA1",
        #"LOBA2.LOBA2",
        #"LOBA3.LOBA3",
        "LOBA0_yosys.LOBA0",
        # "LOBA1_yosys.LOBA1",
        # "LOBA2_yosys.LOBA2",
        # "LOBA3_yosys.LOBA3",
        ]
    for mod_name in mod_list:
        mod = importlib.import_module(mod_name)
        testbench_run(mod)
