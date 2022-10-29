! This code solves the 2-dimensional Laplace equation :
!  (d^2/dx^2)u(x,y)+(d^2/dy^2)u(x,y)=0
! in a rectangular Drichlet boundary conditions.

program Laplace_EQ
implicit none
real::t,test,tol
integer::m,n,i0,itr
real,allocatable,dimension(:,:)::u


print*,' '
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*,' This code solves the 2-dimensional Laplace equation : '
print*,' (d^2/dx^2)u(x,y)+(d^2/dy^2)u(x,y)=0 '
print*,' in a rectangular Drichlet boundary conditions.'
print*,' The Laplace is solved in a M*N gird space'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'



call sub_PressEnter()

print*,' Enter M , N (The shape of the matrix ) '
print*,' For example :  5 , 5'
read (*,*) m,n

allocate(u(m,n))

print*,' Enter the maximum tolerance of convergence at iterations '
print*,' For example : 0.0001 '
read (*,*) tol


u=0.
print*,' Enter the up side boundary value of rectangle '
print*,' For example : 80.0 '
read(*,*)test
u(1,:)=test
print*,' Enter the down side boundary value of rectangle '
print*,' For example : 0.0 '
read(*,*)test
u(m,:)=test
print*,' Enter the left side boundary value of rectangle '
print*,' For example : 20.0 '
read(*,*)test
u(:,1)=test
print*,' Enter the Right side boundary value of rectangle '
print*,' For example : 180.0 '
read(*,*)test
u(:,n)=test

call sub_PressEnter()

call sub_Laplace_Itr(m,n,u,tol,itr)

open (100,file='Laplace.txt')

do i0=1,n
write(*,'(1X,20(1X,F6.2))'),u(i0,:)
write(100,'(1X,20(1X,F6.2))'),u(i0,:)
end do

print*,''
print*,' Number of iterations :',itr
print*,''
call sub_PressEnter()

print*,' The results is also printed in the file  Laplace.txt '
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*,' This code is written by Moraad Biagooi at 1391-10-11'
print*,' M.Biagooi@gmail.com'
print*,' Press Enter To End'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
read(*,*)

end