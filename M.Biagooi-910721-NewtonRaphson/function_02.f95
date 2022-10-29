! We Define a function here------------------------
! for newton_root_finder program
function func_02(x)
implicit none
real::func_02,x
func_02=sin(x)-2*cos(2*x)
end function

! Derivation of above function---------------------
function func_02_deriv(x)
implicit none
real::func_02_deriv,x
func_02_deriv=cos(x)+4*sin(2*x)
end function

! Written By Moraad Biagooi at 1391-07-21