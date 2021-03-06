"""
Мифи 1курс алгоритмы задачи на фортране 90.
"""

"""
1. Интерполяционные полиномы первой степени
"""

x0 = 0.53
y0 = 1.92
x1 = 2.73
y1 = 8.96
x2 = 5.63
# y = L1(x2) and P1(x2)

e = 0.01

a0 = (y0*x1 - y1*x0) / (x1-x0)
a1 = (y1-y0) / (x1-x0)

y2 = a1 * x2 + a0

# print(round(y2, 2))

ly2 = (y0 * (x2-x1) / (x0-x1)) + (y1 * (x2 - x0) / (x1 - x0))

# print(round(ly2, 2))

py2 = y0 + ((y1-y0) / (x1-x0)) * (x2-x0)

# print(round(py2, 2))

"""
2. Интерполяционные полиномы второй степени
"""

x0 = 0.87
y0 = 7.56
x1 = 6.26
y1 = 3.69
x2 = 7.87
y2 = 4.47
x3 = 8.41
# y3 = L2(x3) & P2(x3)

a0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))

a1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))

a2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))

print (a2)

lx31 = y0 * ((x3-x1)*(x3-x2) / (x0-x1)*(x0-x2))
lx32 = y1 * ((x3-x0)*(x3-x2) / (x1-x0)*(x1-x2))
lx33 = y2 * ((x3-x0)*(x3-x1) / (x2-x0)*(x2-x1))


lx3 = lx31 + lx32 + lx33

print(lx3)

px1 = (y1-y0)/(x1-x0)*(x3-x0)

px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x3-x0)*(x3-x1)/(x2-x0))

px3 = y0 + px1 + px2

print(px3)


"""
3. Интерполяционные полиномы первой стпени
"""

x0 = 0.61
y0 = 7.81
x1 = 1.83
y1 = 8.13

x2 = 5.35
y2 = 7.92
x3 = 6.43
y3 = 5.12

"""
Проверить (x2,y2) и (x3,y3) линейной функции
C1(x), L1(x)
"""
a1 = (y1-y0)/(x1-x0)
a0 = (y0*x1 - y1*x0) / (x1-x0)

print("a1, a0")
print(a1)
print(a0)

cx2 = a0 + a1*x2

ly2 = (y0 * (x2-x1) / (x0-x1)) + (y1 * (x2 - x0) / (x1 - x0))

cx3 = a0 + a1*x3

ly3 = (y0 * (x3-x1) / (x0-x1)) + (y1 * (x3 - x0) / (x1 - x0))

print(" cx2: ")
print(cx2)
print(ly2)
print(y2)

print(" cx3: ")
print(cx3)
print(ly3)

print(y3)


"""
4. Проверить полиномы второй степени
"""

print("---4---")

x0 = 1.24
y0 = 7.51
x1 = 2.09
y1 = 6.34
x2 = 3.89
y2 = 7.95

x3 = 5.68
y3 = 1.40
x4 = 6.83
y4 = 22.52
# C2(x) P2(x)


a0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))

a1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))

a2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))

cy3 = a0 + a1*x3 + a2*x3*x3
print("cy3")
print(cy3)

px1 = (y1-y0)/(x1-x0)*(x3-x0)

px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x3-x0)*(x3-x1)/(x2-x0))

px3 = y0 + px1 + px2
print("px3")
print(px3)
print(y3)

cy4 = a0 + a1*x4 + a2*x4*x4
print("cy4")
print(cy4)

px1 = (y1-y0)/(x1-x0)*(x4-x0)

px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x4-x0)*(x4-x1)/(x2-x0))

px4 = y0 + px1 + px2
print("px4")
print(px4)
print("y4")
print(y4)

"""
5. Полином первой и второй
"""

x0 = 0.24
y0 = 7.81
x1 = 2.89
y1 = 8.13
x2 = 4.09
y2 = 8.27

x3 = 6.69
y3 = 8.56
x4 = 7.21
y4 = 8.65

ga0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))

ga1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))

ga2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))

pa1 = (y2-y0)/(x2-x0)
pa0 = (y0*x2 - y2*x0) / (x2-x0)

cy3 = a0 + a1*x4 + a2*x3*x3

pa3 = pa0 + pa1 * x3

print("cy3")
print(pa3)  # Принадлежит прямой
print(y3)

pa4 = pa0 + pa1 * x4
print(pa4)  # Принадлежим прямой
print(y4)
