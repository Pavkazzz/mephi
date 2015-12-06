
      program LABA4
      

      real :: x0, y0, x1, y1, x2, y2, x3, y3, x4, y4 
      real :: a0, a1, a2
      real :: cy3, cy4 
      real :: px1, px2, px3, px4
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
      a0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))
      a1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))
      a2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))

      cy3 = a0 + a1*x3 + a2*x3*x3
      print *, "cy3", cy3

      px1 = (y1-y0)/(x1-x0)*(x3-x0)
      px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x3-x0)*(x3-x1)/(x2-x0))
      px3 = y0 + px1 + px2
      print *, "px3", px3, y3

      cy4 = a0 + a1*x4 + a2*x4*x4
      print *, "cy4", cy4

      px1 = (y1-y0)/(x1-x0)*(x4-x0)
      px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x4-x0)*(x4-x1)/(x2-x0))
      px4 = y0 + px1 + px2
      print *, "px4", px4, y4

      end

