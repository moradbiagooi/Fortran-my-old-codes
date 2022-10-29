!
!  ConsoleApp.f90
!
!  Fortran Console Application 
!  Generated by PGI Visual Fortran(R)
!  12/22/2012 7:35:16 PM
!

      program prog

      implicit none
	  real::kx,ky,e,ax,ay,bx,by
	  ax=1.5
	  ay=sqrt(3./4.)
	  bx=1.5
	  by=-ay
	  open(100,file='res.txt')
	  do kx=-4. , 4.,.1
	  do ky=-4. , 4.,.1
	  e=sqrt(3.+2.*cos(kx*ax+ky*ay)+2.*cos(kx*bx+ky*by)+2.*cos(2.*ky*by))
	  write(100,*)kx,ky,e
	  write(100,*)kx+0.001,ky+0.001,-e+6.
	  end do
	  end do

      end program prog
