
      program LABA2
      

      real :: x0, y0, x1, y1, x2, y2, x3, a0, a1, a2 
      real :: lx31, lx32, lx33
      real :: lx3
      real :: px1, px2, px3


      x0 = 0.87 
      y0 = 7.56 
      x1 = 6.26 
      y1 = 3.69 
      x2 = 7.87 
      y2 = 4.47 
      x3 = 8.41 

      a0 = (1/(x1*(x2-x0))) * (x0 * ((y2 * x1 * x1 - y1 * x2 * x2) / (x2 - x1)) - x2 * ((y1*x0*x0 - y0*x1*x1) / (x1-x0)))

      a1 = -1 * (1/(x2-x0)) * (((y2-y1)*(x1+x0)/(x2-x1)) - ((y1-y0)*(x2+x1)/(x1-x0)))

      a2 = (1/(x2-x0)) * (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0)))
      print *, a0+a1*x3+a2*x3*x3

      lx31 = y0 * ((x3-x1)*(x3-x2)) / ((x0-x1)*(x0-x2))
      lx32 = y1 * ((x3-x0)*(x3-x2)) / ((x1-x0)*(x1-x2))
      lx33 = y2 * ((x3-x0)*(x3-x1)) / ((x2-x0)*(x2-x1))

      print *, lx31, lx32, lx33
      lx3 = lx31 + lx32 + lx33
      print *,lx3

      px1 = (y1-y0)/(x1-x0)*(x3-x0)
      px2 = (((y2-y1)/(x2-x1)) - ((y1-y0)/(x1-x0))) * ((x3-x0)*(x3-x1)/(x2-x0))
      px3 = y0 + px1 + px2

      print *,px3

      end
