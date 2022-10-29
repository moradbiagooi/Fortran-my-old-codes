! A subroutine to show results .
! This code is written by Moraad Biagooi at 1391/08/08
subroutine sub_result_int(choose,intgrl,x1,x2,dx)
implicit none
integer::choose
double precision::intgrl ,x1,x2,dx

open (155,file='integral_result.txt')
print*,'====================================================='
print *,' The integral value is =' , intgrl
write(155,*) ' '
write(155,*)' The integral value is =' , intgrl
write(155,*) ' '
write(155,*) 'x1=',x1
write(155,*) 'x2=',x2
write(155,*) 'dx=',dx

if (choose==1) then
	print*,'Calculated with trapezoidal method'
	write(155,*) 'Calculated with trapezoidal method'
else if (choose==2) then
	print*,'Calculated with Simpson method'
	write(155,*)'Calculated with Simpson method'
endif
write(155,*) 'This code is written by Moraad Biagooi at 1391/08/08'

print*, 'Press Enter to end the program'
read(*,*)
close(155)

end subroutine sub_result_int