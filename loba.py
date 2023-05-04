N = 16
k = 4

def get_Xh(X):
    for i in range(N - k):
        if X[i] == "1":
            return X[i:i+4], N - i - 1


def get_Xl(X, kh):
    for i in range(N-kh+4, N-k+1):
        if X[i] == "1":
            return X[i:i+4], N - i - 1


def ssg(k1, k2):
    return k1 + k2 - 6



def multk(x, y):
    xbin = int(x, 2)
    ybin = int(y, 2)
    return xbin*ybin


A = "0100100011111001"
B = "0011000011101010"

Ah, ka1 = get_Xh(A)
Al, ka2 = get_Xl(A, ka1)

Bh, kb1 = get_Xh(B)
Bl, kb2 = get_Xl(B, kb1)

print(Ah, ka1)
print(Al, ka2)

print(Bh, kb1)
print(Bl, kb2)

loba0 = multk(Ah, Bh) << ssg(ka1, kb1)
loba1 = loba0 + (multk(Ah, Bl) << ssg(ka1, kb2))
loba2 = loba1 + (multk(Al, Bh) << ssg(ka2, kb1))
loba3 = loba2 + (multk(Al, Bl) << ssg(ka2, kb2))

abin = int(A, 2)
bbin = int(B, 2)
print("acc", abin * bbin)

print("loba0", loba0)
print("loba1", loba1)
print("loba2", loba2)
print("loba3", loba3)




