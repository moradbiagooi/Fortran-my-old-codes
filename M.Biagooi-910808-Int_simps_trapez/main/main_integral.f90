!
! This program is written to calculate a function f(x)
! that is defined in the file "func_01.f90" with the
! name func_01(x) with only one double precision variable
! called "x" .
! 
! This code is written by Moraad Biagooi at 1391/08/08
program integral_main
implicit none
integer::choose
double precision:: x1,x2,dx,intgrl
call sub_enter_int(x1,x2,dx)

111 read*,choose

if (choose==1) then
	call sub_Trapz_int(x1,x2,dx,intgrl)
	call sub_result_int(choose,intgrl,x1,x2,dx)
	stop
else if (choose==2) then
	call sub_Simpson_int(x1,x2,dx,intgrl)
	call sub_result_int(choose,intgrl,x1,x2,dx)
	stop
else 
	print*, 'You have to choose between 1 and 2'
	goto 111
endif 




end program integral_main