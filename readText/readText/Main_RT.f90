!
!  ConsoleApp.f90
!
!  Fortran Console Application 
!  Generated by PGI Visual Fortran(R)
!  1/1/2013 12:54:03 AM
!

      program R_t

      implicit none
	  integer,allocatable,dimension(:,:)::AFM,particle
		integer::m,n,i,j
	  real::test1,test2,test3,test4
	  real::mean,variance
	  integer::i,j
	  integer::i0,j0
	  integer::n1,n2,n3,n4


		m=256
		n=256
		allocate (AFM(m,n))
		allocate (particle(m,n))
		particle=0
		AFM=0
		open(100,file='data.txt')
		!do i=1,m
		!read(100,*) u(I,:)
		!end do
		read(100,*) AFM(:,:)
		
		!PRINT*,AFM
		!AFM=ABS(AFM)
		AFM=AFM+1000
		





	  !==============================================
	  !==============================================
	  n1=0
	  n2=0
	  n3=0
	  n4=0
	  
	  test4=0.
	  test3=0.
	  test2=0.
	  test1=0.




	  mean=sum(AFM)
	  mean=mean/(n*n)
	  variance=0.
	  do i=1,n
	  do j=1,n
	  variance=variance+(mean-AFM(i,j))**2
	  end do
	  end do
	  variance=variance/(n*n)
	  !==============================================
	  !==============================================
	  do i=1,n
	  do j=1,n
      
	  test1=max(AFM(i,j-1),AFM(i,j+1),AFM(i-1,j),AFM(i+1,j))
	  if (AFM(i,j)> test1) then
	  test1=min(AFM(i,j-1),AFM(i,j+1),AFM(i-1,j),AFM(i+1,j))
	  test2=max(AFM(i-1,j-1),AFM(i-1,j+1),AFM(i+1,j-1),AFM(i+1,j+1))
	     if (test1>test2 ) then
		   test2=min(AFM(i-1,j-1),AFM(i-1,j+1),AFM(i+1,j-1),AFM(i+1,j+1))
		   test3=max(AFM(i,j-2),AFM(i,j+2),AFM(i-2,j),AFM(i+2,j))
	       if (test2>test3) then
		   test3=min(AFM(i,j-2),AFM(i,j+2),AFM(i-2,j),AFM(i+2,j))
		   test4=max(AFM(i-2,j-2),AFM(i-2,j+2),AFM(i+2,j-2),AFM(i+2,j+2))
		     
			 if (test3>test4) then
		     n4=n4+1
		   particle(i,j)=4
		   
		   particle(i+1,j)=4
		   particle(i-1,j)=4
		   particle(i,j+1)=4
		   particle(i,j-1)=4
		   
		   particle(i+1,j+1)=4
		   particle(i-1,j-1)=4
		   particle(i-1,j+1)=4
		   particle(i+1,j-1)=4
		   
		   particle(i+2,j)=4
		   particle(i-2,j)=4
		   particle(i,j+2)=4
		   particle(i,j-2)=4
		   
		   particle(i+2,j+2)=4
		   particle(i-2,j-2)=4
		   particle(i-2,j+2)=4
		   particle(i+2,j-2)=4
		   
		  
		   
		     else
		     n3=n3+1
		   particle(i,j)=3
		   
		   particle(i+1,j)=3
		   particle(i-1,j)=3
		   particle(i,j+1)=3
		   particle(i,j-1)=3
		   
		   particle(i+1,j+1)=3
		   particle(i-1,j-1)=3
		   particle(i-1,j+1)=3
		   particle(i+1,j-1)=3
		   
		   particle(i+2,j)=3
		   particle(i-2,j)=3
		   particle(i,j+2)=3
		   particle(i,j-2)=3
		   
		  
		  
		     endif
	          
		   else
		   
		  
		   
	       n2=n2+1
		   particle(i,j)=2
		   particle(i+1,j)=2
		   particle(i-1,j)=2
		   particle(i,j+1)=2
		   particle(i,j-1)=2
		   particle(i+1,j+1)=2
		   particle(i-1,j-1)=2
		   particle(i-1,j+1)=2
		   particle(i+1,j-1)=2
		   end if
		 
		 else
		 
		 n1=n1+1
		 particle(i,j)=1
		 particle(i+1,j)=1
		 particle(i-1,j)=1
		 particle(i,j+1)=1
		 particle(i,j-1)=1
		   
		 
		 endif
	  
	  endif

	  end do
	  end do
	  !==============================================
	  !==============================================
	  print*,n1,n2,n3,n4
      print*,'variance',variance

open (200,file='particle.txt')

do i0=1,m
do j0=1,n
write(200,*) i0,j0,particle(i0,j0)
end do
end do	  

open (300,file='particle1.txt')
do i0=1,m

write(300,*) particle(i0,:)

end do	  

      end program 
