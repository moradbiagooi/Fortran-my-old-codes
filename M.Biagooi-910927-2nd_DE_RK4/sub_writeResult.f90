! -----------------------------------------------------------------
! This subroutine is for writing final data in a file'
! This code is written by Moraad Biagooi
! -----------------------------------------------------------------
subroutine sub_writeResult(t,x,m)
implicit none
integer::k,m
real*8,dimension(0:m)::t,x
! -----------------------------------------------------------------
print*,''
open(50,file='result.txt')

	do k=0,m-1
	write(*,*)t(k),x(k),3*exp(-2*t(k))*cos(t(k))+exp(-2*t(k))*sin(t(k))
	write(50,*)t(k),x(k),3*exp(-2*t(k))*cos(t(k))+exp(-2*t(k))*sin(t(k))
	end do
print*,'This code is written by Moraad Biagooi'
print*,'The result is in file "Result.txt"'
print*,'Press Enter to Exit Program'
read(*,*)
stop
! -----------------------------------------------------------------
end
! -----------------------------------------------------------------