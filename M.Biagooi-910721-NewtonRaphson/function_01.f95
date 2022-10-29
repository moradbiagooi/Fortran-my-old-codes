! We define a function here----------------------
! for newton_root_finder program
function func_01(x)
implicit none
real::func_01,x
func_01=x-cos(x)
end function

! Derivation of above function-------------------
function func_01_deriv(x)
implicit none
real::func_01_deriv,x
func_01_deriv=1+sin(x)
end function

! Written By Moraad Biagooi at 1391-07-21