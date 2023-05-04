import importlib

def testbench_run(ckt=None, results_filename=None):

    A = "0100100011111001"
    B = "0011000011101010"

    try:
        axm = ckt.loba0()
    except:
        try:
            axm = ckt.loba1()
        except:
            try:
                axm = ckt.loba2()
            except:
                try:
                    axm = ckt.loba3()
                except:
                    print("error")
                    return
    axm.set_A(int(A,2))
    axm.set_B(int(B,2))
    axm.eval()
    print(axm.get_P())


if __name__ == "__main__":
    mod_list = [
        "loba0_exact.loba0",
        "loba1_exact.loba1",
        "loba2_exact.loba2",
        "loba3_exact.loba3",
        ]
    for mod_name in mod_list:
        mod = importlib.import_module(mod_name)
        testbench_run(mod)
