! This code is written by Moraad Biagooi at 1391-09-20
! The subroutine for writing data in file and on screen.

subroutine sub_writeData(m,n,u)
implicit none
integer ::i0,j0,m,n
real,dimension(0:m,0:n)::u


open(600,file='UXT_rep.txt')
do i0=0,m -1
write(*,'(1X,20(1X,F6.3))')u(i0,:)
write(600,'(1X,20(1X,F6.3))')u(i0,:)

end do


open(100,file='r01.txt')
open(200,file='r02.txt')
open(300,file='r03.txt')
open(400,file='r04.txt')

do i0=0,m
write(100,*) u(i0,0),u(i0,1),u(i0,2)
write(200,*) u(i0,3),u(i0,4),u(i0,5)
write(300,*) u(i0,6),u(i0,7),u(i0,8)
write(400,*) u(i0,9),u(i0,10)

end do

open(500,file='UXT.txt')
do i0=0,m-1
do j0=0,n-1
 write(500,*) u(i0,j0),i0,j0

end do
end do

print*,''
print*,'Calculated results in three types, are in bellow files'
print*,'"r01.txt","r02.txt","r03.txt","r04.txt","UXT.txt","UXT_rep.txt"'
print*,'This code is written by Moraad Biagooi at 1391-09-20'
print*,'-------------------------------------------------------------------------'
print*,''
print*,'Press Enter to Exit'
read(*,*)
print*,''
print*,'-------------------------------------------------------------------------'

end