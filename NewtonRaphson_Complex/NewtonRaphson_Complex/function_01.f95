! We define a function here----------------------
! for newton_root_finder program

function func_01(x)
implicit none
real::func_01,x

   !func_01=sin(x)             !function_1 for test
   !func_01=x-cos(x)           !function_2 for test
   func_01=sin(x)-2*cos(2*x)  !function_3 for test

end function



! Derivation of above function-------------------
function func_01_deriv(x)
implicit none
real::func_01_deriv,x

  !func_01_deriv=cos(x)			 !function_1 Derivation for test
  !func_01_deriv=1+sin(x)			 !function_1 Derivation for test
  func_01_deriv=cos(x)+4*sin(2*x) !function_1 Derivation for test

end function

! Written By Moraad Biagooi at 1391-07-21