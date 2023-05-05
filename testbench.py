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
        "LOBA0_16_4_none.LOBA0_16_4",
        "LOBA1_16_4_none.LOBA1_16_4",
        "LOBA2_16_4_none.LOBA2_16_4",
        "LOBA3_16_4_none.LOBA3_16_4",
        ]
    for mod_name in mod_list:
        mod = importlib.import_module(mod_name)
        testbench_run(mod)
