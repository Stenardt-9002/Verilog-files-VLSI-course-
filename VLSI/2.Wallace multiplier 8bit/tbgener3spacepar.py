
# this code generates test bench for iverilog code

'''Improvements'''
# remove single line comments
# all regex expression were not for multiline statements SO I REMOVED THEM


# //not paid detail to double dimension array





import re
import itertools
z1 = input("Enter the name of the file  ")
if '.' not in z1:
    f1 = open(z1+".v","r")
    tbna_e = z1
else:
    f1 = open(z1,"r")
    tbname = z1.split(".")
    tbna_e = z1[0]

# # tbna_e = "HalfAdder"
# # tbna_e = "full_add"
# # tbna_e = "Wallac"
# tbna_e = "c17"
# # tbna_e = "c432"
# tbna_e = "c499"
# f1 = open(tbna_e+".v","r")
tbna_e+="_tb.v"
# # print(tbna_e)

str11 = f1.read()
# for smaple

# str11 = '''module HalfAdder (a,b,sum, ca);
# input [1:0]am,b;
# output sum, ca;
# 	assign sum = a ^ b;
# 	assign ca  = a&b;
# endmodule'''

# print(str11)
f1.close()






'''remove space and \n'''
# not in multiline mode



# print(str11)

print("\n\n\n\n\nremoving comments\n\n\n\n\n")
# p2 = re.compile(r'\\[\w\s]*\n')
p2 = re.compile(r'//.*\n*')
# str13 = p2.findall(str11)
str13 = p2.sub('',str11)
# print(str13)
print("\n\n\nRemoving nextline \n\n\n\n")
p = re.compile(r'\n')
str13 = p.sub('',str13)

# print(str13)











# print("test")
# print()
# print(str11)
# print()

# lien = []
# # print("\n")
# tmp = []
# for each in str11:
#
#     if each != "\n":
#         tmp.append(each)
#     else:
# #         lien.append(tmp)
# # #         tmp = []
# # #     # print(each)
# # # #     # print(tmp)
# # # # # print(lien)
#
# nameofmainmod=''
# # patternmodule = re.compile(r'\s*module\s*([a-zA-Z0-9]*)\s*\([a-zA-Z,\s\n]*\);')
# patternmodule = re.compile(r'\s*module\s*([a-zA-Z0-9]*)\s*\((\s.)*\);')
# # patternmodule = re.compile(r'module\s*(.*)\s*\([a-zA-Z,\s ]*\);')
# # patternmodule = re.compile(r'module\s*(.*)\s*(.*);')
# # match1 = patternmodule.findall(str11)
# match1 = patternmodule.finditer(str11)
# # match1 = patternmodule.findall(str11)
# print(match1)
# print("reached")
# for mat in match1:
#     print(mat.group(1))
#     # print(mat)
#     nameofmainmod = mat.group(1)
#     break # assuming first mdule name is name of mainmodule
# # print(match1)
# print("moduel name = ",nameofmainmod)







# corrected

nameofmainmod = ''
# patternmodule = re.compile(r'\s*module\s*(\w)*\s*\((\s.)*\);')
# patternmodule = re.compile(r'\s*module\s*(\w*)\s*\(([\w,\s]*)\);')
patternmodule = re.compile(r'\s*module\s*(\w*)\s*\(([\w,\s*]*)\)\s*;')
# patternmodule = re.compile(r'\s*module\s*([\w]*)')
match1 = patternmodule.finditer(str13)
# match1 = patternmodule.findall(str13)
# print(match1)
print("reached")
for mat in match1:
    # print(mat.group(1))
    # print(mat)
    nameofmainmod = mat.group(1)
    break # assuming first mdule name is name of mainmodule
# print(match1)
print("moduel name = ",nameofmainmod)









'''finding variables '''
# inputport = ''
#
#
# '''still need to verify variables'''
# # patterinputvar = re.compile(r'input\s[a-zA-Z, ]*;$')
# patterinputvar = re.compile(r'input\s([a-zA-Z,\[\]\d: ]*)\s*;')
# match2 = patterinputvar.findall(str11)
# # match2 = patterinputvar.findall(str11)
# print("match2 = ",match2)
# for mat in match2:
#     # print(mat.group(1))
#     # print(mat)
#     if mat!=match2[-1]:
#         inputport+=mat+','
#     else:
#         inputport+=mat
# print("\ninput port = ",inputport)



inputport = ''
# patterinputvar = re.compile(r'input\s*([a-zA-Z,\[\]\d: ]*)\s*;')
patterinputvar = re.compile(r'input\s*([a-zA-Z,\[\]\d:\s*]*)\s*;')
match2 = patterinputvar.findall(str13)
# match2 = patterinputvar.findall(str11)
print("match2 = ",match2)
for mat in match2:
    # print(mat.group(1))
    # print(mat)
    if mat!=match2[-1]:
        inputport+=mat+','
    else:
        inputport+=mat
print("\ninput port = ",inputport)







#
outputport = ''
#
#
#
#
#
# patteroutputvar = re.compile(r'output\s*([a-zA-Z,\[\]\d: ]*)\s*;')
# # match3 = patteroutputvar.finditer(str11)
# match3 = patteroutputvar.findall(str11)
# # match3.remove('')
# print(match3)
# for mat in match3:
#     print(mat)
#     # print(mat.group(1))
#     # outputport = mat.group(1)
#     if mat!=match3[-1]:
#         outputport+=mat+','
#     else:
#         outputport+=mat
#
# # print(type(outputport))
# print("\noutput port = ",outputport)





# patteroutputvar = re.compile(r'output\s*([a-zA-Z,\[\]\d: ]*)\s*;')
patteroutputvar = re.compile(r'\s*output\s*([a-zA-Z,\[\]\d:\s*]*)\s*;')
# match3 = patteroutputvar.finditer(str11)
match3 = patteroutputvar.findall(str13)
# match3.remove('')
# print(match3)
for mat in match3:
    # print(mat)
    # print(mat.group(1))
    # outputport = mat.group(1)
    if mat!=match3[-1]:
        outputport+=mat+','
    else:
        outputport+=mat

# print(type(outputport))
print("\noutput port = ",outputport)





'''find size of respective variables'''

# if [:
#     pass

inputport = list(inputport.split(','))
inputport1 = []
print(" inputport=   ", inputport)
i=0


'''size var is end var'''

for i in inputport:
    i = i.replace(" ","")
    if '[' in i:

        '''find size '''
        i2 = list(i)
        in1str = i2.index('[')
        in1col = i2.index(':')
        in1end = i2.index(']')
        size1 = (int)(i[in1str+1:in1col])
        start1 = (int)(i[in1col+1:in1end])
        var1name = i[in1end+1:]
        lit1 = []
        lit1.append(var1name)
        lit1.append(size1)
        lit1.append(start1)



    else:

        lit1  = []
        lit1.append(i[:])
        lit1.append(1)
        lit1.append(1)
    inputport1.append(lit1)
print("inputport1 = ",inputport1)

outputport = outputport.split(',')
print("outputport =  ",outputport)
outputport1 = []

for i in outputport:
    i = i.replace(" ","")
    if '[' in i:
        '''find size '''
        i2 = list(i)
        in1str = i2.index('[')
        in1col = i2.index(':')
        in1end = i2.index(']')
        size1 = (int)(i[in1str+1:in1col])
        start1 = (int)(i[in1col+1:in1end])
        var1name = i[in1end+1:]
        lit1 = []
        lit1.append(var1name)
        lit1.append(size1)
        lit1.append(start1)



    else:


        lit1  = []
        lit1.append(i[:])
        lit1.append(1)
        lit1.append(1)
    outputport1.append(lit1)
print("outputport1 = ",outputport1)




# finding all combination only in input port






'''wrting in file'''


# print(inputport)

f2 = open(tbna_e,"w")
f2.write("module top ;\n")
# f2.write('reg ')
# for i in inputport:
#     f2.write(i)
#     if i!=inputport[-1]:
#         f2.write(" ,")
for i in inputport:
    f2.write('reg '+i+" ;\n")
    # if i!=inputport[-1]:
    #     f2.write(" ,")

f2.write(" \n")
# f2.write('wire ')
# for i in outputport:
#     f2.write(i)
#     if i!=outputport[-1]:
#         f2.write(" ,")
for i in outputport:
    f2.write('wire '+i+" ;\n")
f2.write(" \n")
allvarlist1 = ""
for i in inputport1:
    allvarlist1+=i[0]
    allvarlist1+=","
for i in outputport1:
    allvarlist1+=i[0]
    if i!=outputport1[-1]:
        allvarlist1+=','

print("allvariables = " ,allvarlist1 )
allvarlist1 = " "+"("+allvarlist1+");"
print("inputport = ",inputport)
print("outputport = ",outputport)
f2.write(nameofmainmod + "  "+nameofmainmod[0:2]+"_1")
f2.write(allvarlist1)
f2.write("\n\n\n")
f2.write("initial\nbegin\n\n")









#writing all possibru combination
str123com = '' #will include matter to be written
# list to include all combination
listcom1 = []
for i in inputport1:
    #looking for all variables
    # print(i)
    sizeofavr = i[1]-i[2]+1
    # print(sizeofavr)
    listcn = [] #contain all possible comniation for one var
    sizeofavr = pow(2,sizeofavr) #binary combination
    for j in range(0,sizeofavr):
        listcn.append(j)
    listcom1.append(listcn) # contain list of all combinations of single variable
#
asn12 = list(itertools.product(*listcom1))
print("IN CAE OF FIRE HELP BUG DATA")
# print(asn12)
for i in asn12:
    for j in range(0,len(inputport1)):
    # for j in range(0,4):
        # var1siez = j[1]-j[2]+1
        # str123com+= j[0]+" = "+var1siez+"'d"+
        var1siez = inputport1[j][1]-inputport1[j][2]+1
        var1siez = (str)(var1siez)
        # print(type(var1siez))
        value = (str)(i[j])
        # str123com+=inputport1[j][0]+" = "+str(var1siez)+"'d"+i[j]+'; '
        str123com+=inputport1[j][0]+" = "+str(var1siez)+"'d"+value+'; '

    str123com+=" #10 \n"

# print(str123com)
f2.write(str123com)


#comment above part for cpu saving purose


# #optimise by taking some output
# #writing all possibru combination
# str123com = '' #will include matter to be written
# # list to include all combination
# listcom1 = []
# for i in inputport1:
#     #looking for all variables
#     # print(i)
#     sizeofavr = i[1]-i[2]+1
#     # print(sizeofavr)
#     listcn = [] #contain all possible comniation for one var
#     sizeofavr = pow(2,sizeofavr) #binary combination
#     for j in range(0,sizeofavr):
#         listcn.append(j)
#     listcom1.append(listcn) # contain list of all combinations of single variable
# #
# asn12 = list(itertools.product(*listcom1))
# print("IN CAE OF FIRE HELP BUG DATA")
# # print(asn12)
# for i in asn12:
#     for j in range(0,len(inputport1)):
#         # var1siez = j[1]-j[2]+1
#         # str123com+= j[0]+" = "+var1siez+"'d"+
#         var1siez = inputport1[j][1]-inputport1[j][2]+1
#         var1siez = (str)(var1siez)
#         # print(type(var1siez))
#         value = (str)(i[j])
#         # str123com+=inputport1[j][0]+" = "+str(var1siez)+"'d"+i[j]+'; '
#         str123com+=inputport1[j][0]+" = "+str(var1siez)+"'d"+value+'; '
#
#     str123com+=" #10 \n"
#
# # print(str123com)
# f2.write(str123com)


#comment above part for cpu saving purose




f2.write("\n;end\n\n")








'''print all variable data '''
#get all variables
# allvarlist1



f2.write("\n initial \n")
f2.write("\n begin \n")
allvariableslist2 = []
for i in inputport1:
    allvariableslist2.append(i[0])
for i in outputport1:
    allvariableslist2.append(i[0])

print("allvariable list = \n",allvarlist1)
print("allvariable list = \n",allvariableslist2)
allvarlist1 = list(allvarlist1)
allvarlist1.remove('(')
allvarlist1.remove(')')
allvarlist1.remove(';')
allvarlist1 = "".join(allvarlist1)
print("allvariable list = \n",allvarlist1)
monitorline = "$monitor("+'" '+allvarlist1+" "
for i in allvariableslist2:
    monitorline+= " %d ,"
monitorline+=' "'
for i  in allvariableslist2:
    monitorline+=','+i
# +'",'
monitorline += ') ;'
# add ,
# add %d
# add var name


f2.write(monitorline)

f2.write("\nend\n")






f2.write("\nendmodule")
f2.close()
