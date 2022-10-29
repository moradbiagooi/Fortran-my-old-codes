!This code is written by Moraad Biagooi at 1391-07-29.
! In this subroutine , we calculate error between real function and interpolated one.
! This is just an homework for class!
subroutine sub_lag_error_calcul(i0_end,mat_xy)
implicit none
double precision::mat_xy(1:i0_end,1:2),x,dx,x_fin,f1,f2
double precision::f_lagrang_intrpl,func_01
integer ::i0_end
! f_lagrang_intrpl: interpolating function
! func_01: real function
! i0_end: number of points
open(100,file='results_error.txt')
x=-1
dx=0.01
x_fin=2
do while (x<x_fin)
f1=f_lagrang_intrpl(i0_end,x,mat_xy)
f2=func_01(x)
write (100,*) x,abs(f2-f1),f1,f2
x=x+dx
end do
close(100)

print*,'The result of error calculation is at file "results_error.txt" .'
print*,' '
print*,' Press Enter to End'
read(*,*)

end subroutine sub_lag_error_calcul