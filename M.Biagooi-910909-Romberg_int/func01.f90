! This function integral is calculated in Romberg's method
! This code is written by Moraad Biagooi
function func01(x)
implicit none
real*8:: func01,x
func01=sin(2*x)/(1+x**5)
end