
      program LABA3
      

      real :: x0, y0, x1, y1, x2, y2, x3, a0, a1 
      real cx2, ly2, cx3, ly3      

x0 = 0.61 
y0 = 7.81 
x1 = 1.83 
y1 = 8.13 
 
 
x2 = 5.35 
y2 = 7.92 
x3 = 6.43 
y3 = 5.12 


      a1 = (y1-y0)/(x1-x0) 
      a0 = (y0*x1 - y1*x0) / (x1-x0) 
      print *, "a1, a0", a1, a0      

      cx2 = a0 + a1*x2
 
      ly2 = (y0 * (x2-x1) / (x0-x1)) + (y1 * (x2 - x0) / (x1 - x0)) 
 
      cx3 = a0 + a1*x3 
 
      ly3 = (y0 * (x3-x1) / (x0-x1)) + (y1 * (x3 - x0) / (x1 - x0)) 
      print *, "cx2", cx2, ly2, y2
      print *, "cx3", cx3, ly3, y3

      end
