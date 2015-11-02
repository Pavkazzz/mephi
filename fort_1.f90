
      program LABA1
      

      real :: x0, y0, x1, y1, x2, y2, a1, a2
      real :: geta0
      real :: geta1

      real :: ly2, py2


      x0 = 0.53
      y0 = 1.92
      x1 = 2.73
      y1 = 8.96
      x2 = 5.63
      a1 = geta1(x0,x1,y0,y1) 
      !print *, a1
      a2 = geta0(x0,x1,y0,y1) 
      !print *,a2
      y2 = a1 + a2 * x2

      !print *, y2
      
      ly2 = (y0 * (x2-x1) / (x0-x1)) + (y1 * (x2 - x0) / (x1 - x0))

      py2 = y0 + ((y1-y0) / (x1-x0)) * (x2-x0)

      print *,"ly2 = ", ly2
      print *,"py2 = ", py2

      end

      function geta0(x0, x1, y0, y1) result (a0) 
              real x0
              real x1
              real y0
              real y1
              real a0

      a0 = (y0*x1 - y1*x0) / (x1-x0)
      !print *,a0
      return
      end function    


      function geta1(x0,x1,y0,y1) result (a1)
      real a1
             
      a1 = (y1 - y0) / (x1 - x0)
      return 
      end function

