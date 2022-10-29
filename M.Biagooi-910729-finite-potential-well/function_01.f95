! We define a function here----------------------
! for newton_root_finder program
! This function's roots give us answers for schrodinger equation for 
! finite potential well problem.
function func_01(x,v,L)
implicit none
double precision::func_01,x,V,L

func_01=(x**2)*(1+tan(x)**2)-V*(L/2)**2		!Odd answers

end function

! Derivation of above function-------------------
function func_01_deriv(x)
implicit none
double precision::func_01_deriv,x
func_01_deriv=(1+tan(x)**2)*(2*x+2*(x**2)*tan(x))         !Odd answers

end function

! Written By Moraad Biagooi at 1391-07-21