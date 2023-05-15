import importlib

def testbench_run(ckt=None, results_filename=None):

    A = "0100100011111001"
    B = "0011000011101010"


    axm = ckt.top()

    axm.set_A(int(A,2))
    axm.set_B(int(B,2))
    axm.eval()
    #print(axm.get_P())
    print(int(A,2)*int(B,2), axm.get_P())


if __name__ == "__main__":
    mod_list = [
        # "LOBA0.LOBA0",
        # "LOBA1.LOBA1",
        # "LOBA2.LOBA2",
        # "LOBA3.LOBA3",
        #"LOBA0_yosys.LOBA0",
        #"LOBA1_yosys.LOBA1",
        # "LOBA2_yosys.LOBA2",
        # "LOBA3_yosys.LOBA3",
        "MULT_16.MULT_16",
        "LOBA0_16_4.LOBA0_16_4",
        "LOBA1_16_4.LOBA1_16_4",
        "LOBA2_16_4.LOBA2_16_4",
        "LOBA3_16_4.LOBA3_16_4",
        "LOBA0_16_4_yosys.LOBA0_16_4",
        "LOBA1_16_4_yosys.LOBA1_16_4",
        "LOBA2_16_4_yosys.LOBA2_16_4",
        "LOBA3_16_4_yosys.LOBA3_16_4",
        ]
    for mod_name in mod_list:
        mod = importlib.import_module(mod_name)
        testbench_run(mod)
