
      program LABA5
      

      real :: x0, y0, x1, y1, x2, y2, x3, y3, x4, y4 
      real :: lx31, lx32, lx33
      real :: lx3
      real :: px1, px2, px3
      real :: ga0, ga1, ga2
      real :: pa1, pa0, cy3, cy4, pa3, pa4
      real :: a0, a1, py3, py2, py4
real :: p1y2, p1y3, p1y4
real :: p2x31, p2x32, p2x33, p2x41, p2x42, p2x43

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

a0 = (y0*x2 - y2*x0) / (x2-x0)
a1 = (y2-y0) / (x2-x0)

py3 = a1 * x3 + a0
py4 = a1 * x4 + a0
py2 = a1 * x2 + a0

print *, "prymaya", py2, py3, py4 

print *, "1"

p1y2 = y0 + ((y2-y0) / (x2-x0)) * (x2-x0)
p1y3 = y0 + ((y2-y0) / (x2-x0)) * (x3-x0)
p1y4 = y0 + ((y2-y0) / (x2-x0)) * (x4-x0)
print *, "p1", p1y2, p1y3, p1y4

print *, "poly 2"

ga0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))

ga1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))

ga2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))

print *,"c"
print *, "cy2", ga0 + ga1*x2 + ga2*x2*x2
cy3 = ga0 + ga1*x3 + ga2*x3*x3
print *, "cy3", cy3

cy4 = ga0 + ga1*x4 + ga2*x4*x4
print *, "cy4", cy4

p2x31 = (y1-y0)/(x1-x0)*(x3-x0) 
 
p2x32 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x3-x0)*(x3-x1)/(x2-x0)) 
 
p2x33 = y0 + p2x31 + p2x32 

print *, p2x33

p2x41 = (y1-y0)/(x1-x0)*(x4-x0) 
 
p2x42 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x4-x0)*(x4-x1)/(x2-x0)) 

p2x43 = y0 + p2x41 + p2x42 

print *, p2x43


      end
