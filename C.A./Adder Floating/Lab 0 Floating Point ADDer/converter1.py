# no guard bit

def coverttopower(lit):
    exp = 0
    temo1 = 0
    for ij1 in range(len(lit)-1,-1,-1):
        # print((len(lit)-1-ij1))
        exp+=lit[ij1]*pow(2,len(lit)-1-ij1)

    print(exp)

def mantissatonumber(lit1):
    exp = 0
    temo1 = 0
    for ij1 in range(len(lit1)):
        # print((len(lit)-1-ij1))
        exp+=lit1[ij1]*(pow(2,-(ij1+1)))
        # exp+=lit[ij1]*pow(2,len(lit)-1-ij1)

    print(exp)


x1 = list (map(int,input().split(" ")))
print(len(x1))
# x2 = list(map(int,input().split(" ")))
print(x1)
sign = x1[0]*-1
#cpnvert to exponent 1 to 8 bits
coverttopower(x1[1:9])
mantissatonumber(x1[9:32])
