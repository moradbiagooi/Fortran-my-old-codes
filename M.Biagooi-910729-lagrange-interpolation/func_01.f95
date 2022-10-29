!This code is written by Moraad Biagooi at 1391-07-29.
! An ordinary function f(x)=cos(x). This only will be used for calculation of error
!between interpolated function and real function.
function func_01(x1)
implicit none
double precision::func_01,x1
func_01=cos(x1)
end function