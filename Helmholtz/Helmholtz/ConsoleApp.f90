!
!  ConsoleApp.f90
!
!  Fortran Console Application 
!  Generated by PGI Visual Fortran(R)
!  10/7/2013 10:02:01 PM
!

      program prog

      implicit none

      real*8::alpha,phi1,phi2,phi0! Variables
	  real*8::fs,fm,khi
	  khi=2.5d0
	  phi0=0.22137d0
	  open (100,file="data.txt")

	  do alpha=0.1d0,0.9d0,.01d0
		do phi1=0.1d0,0.9d0,0.01d0

		phi2=(phi0-alpha*phi1)/(1.d0-alpha)

		fs=(phi0-phi2)/(phi1-phi2)*fm(phi1,khi)+(phi1-phi0)/(phi1-phi2)*fm(phi2,khi)

		write(100,*) phi1,phi2,fs-fm(phi0,khi)
		end do
	  end do
	  close(100)

      end program prog

	  function fm(phi,khi)
	  implicit none
	  real*8::fm,phi,khi

	  fm=phi*log(phi)+(1.d0-phi)*log(1.d0-phi)+khi*phi*(1.d0-phi)
	  
	  end 