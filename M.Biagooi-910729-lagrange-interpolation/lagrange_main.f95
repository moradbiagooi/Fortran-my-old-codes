!Hi . In this program , Any ordinary function will be interpolated by Lagrange method.
!This code is written by Moraad Biagooi at 1391-07-29.
program lagrange_main
implicit none
double precision ,allocatable::mat_xy(:,:)!Points of function will be entities of matrix "mat_xy"
integer::n0 ! n0 : number of input points

print*,'In this program , Any ordinary function will be interpolated by Lagrange method.'
print*,' !This code is written by Moraad Biagooi at 1391-07-29.'
print*,'+++++++++++++++++++++++++++++++++++++++++++++++++++++++ '
print*,' Press Enter to Continue'
read(*,*)
print*,' '

print*,'please enter the number of points'
read*,n0
allocate (mat_xy(1:n0,1:2))

call sub_enterxy(n0,mat_xy) ! In this subroutine , we allocate (x,y) in matrix "mat_xy"

call sub_lag_error_calcul(n0,mat_xy) ! In this subroutine , we calculate error between real function and interpolated one


end program

