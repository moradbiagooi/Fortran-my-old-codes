! This subroutine is for writing final data in a file'
! This code is written by Moraad Biagooi
subroutine sub_writeResult()
use mod_mod
implicit none
integer::k

print*,''
open(50,file='result.txt')

	do k=0,m-1
	write(50,*)t(k),y(k),-exp(-t(k))+t(k)**2-2*t(k)+2
	end do

print*,'The result is in file "Result.txt"'
print*,'Press Enter to Exit Program'
read(*,*)
stop
end