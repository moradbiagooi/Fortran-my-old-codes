! Salam.
! This program will calculate root of a function with 
! the method of Newton-Rophson
! Written By Moraad Biagooi at 1391-07-21

program newton_root_finder
use zero_constants
implicit none

integer::i0,indc2,indc0
real::p1,y0,y0_prime,test0
real::p0,relErr,y1,DP,y1_prime
real::func_01,func_01_deriv
real::mesh_counter,mesh_lenght

! p0: first point 
! p1: next point
! max_ITR: maximum number of iterations
! epsilon: maximum value for function at root
!deLTa : maximum of relative error
! eta: :fune tuning for relative error

open(15,file='results.txt')
indc2=1


print*,'Hi. This program will calculate roots of a function'
print*,'by Newton-Raphson method.It finds roots'
print*,'of function in the file function_01.f95 .'
print*,'You can change those files as your want .'
print*,' '
print*,'Results will be in file results.txt'
print*,'Codes Written By Moraad Biagooi at 1391-07-21'
print*,'                 PRESS ENTER TO CONTINUE'
read(*,*)

print*,' If you want to change these parameters'
print*,' enter (2)  if you dont, enter (1)'
print*,'epsilon=',epsilon
print*,'delta=',delta
print*,'eta=',eta
print*,'number 1 or 2 ? '

2 read *, indc0
if (indc0>2 .or. indc0<1) then 
  goto 2
  else if (indc0==2) then
    print*,'The root is smaller than ? '
    read *, epsilon
    print*,'Relative error is smaller than? '
    read *, delta
    print*, 'A small fune tuning for  relative error(eta)? '
    read *,eta
    endif

    print*,' The program will find roots in the range:'
    print*, 'x=-2 to x=2'

    print*,' If you want to change these parameters'
	print*,' enter (2)  if you dont, enter (1)'
    
3 read *, indc0
if (indc0>2 .or. indc0<1) then 
  goto 3
  else if (indc0==2) then
    print*,'x1= ? '
    read *, x1
    print*,'x2=? '
    read *,X2
    endif
  if (x1>x2) then
    test0=x1
    x1=x2
    x2=test0
  end if 

   print*,'Lenght of mesh : '

   read *,mesh_lenght
     
   print*,'And maximum number of iterations in each mesh: '
   read *,max_itr
   
    print*,'**********************************************'
    print*,'            Calculating roots: '
    write(15,*)'*********************************************'
    write(15,*) ' '  
     
! ---------------------mesh process begans----------------------

  mesh_counter=x1
  do while(mesh_counter<x2)
 
    p0=mesh_counter
    indc2=0  



! -------------------root finding process-----------------


    y0=func_01(p0)
    y0_prime=func_01_deriv(p0)

    if (y0_prime==0.0) then
      goto 10
      endif
      
  
    if (y0==0.0) then
      indc2=2
      goto 10
      endif
  
 if (y0*func_01(p0+mesh_lenght)<0) then
    ! Iterations begans------------------
   do i0=0,max_itr
   DP=y0/y0_prime
   p1=p0-DP
  
  
  

    y1=func_01(p1)
    y1_prime=func_01_deriv(p1)
  
   if (y1_prime==0.0) then
      indc2=0
      exit
   endif
      
  
    if (y1==0.0) then
      indc2=2
      exit
    endif
  
   if (y1==0.0) then
      indc2=2
      exit
   endif


  relErr=(2*DP)/(abs(y1)+eta)
 ! ------------abs?-----------------------------------
   if (relErr<delta .and. abs(y1)<epsilon) then
    p0=p1
    y0=y1

    indc2=2
    exit
   endif

 p0=p1
 y0=y1

end do

! --------------------END  of iteration------------------
end if
   
10  if (indc2==2) then
    print*,'x root =',p0,'f(x)=',y0
    write(15,*)'x root =',p0,'f(x)=',y0
    end if

    mesh_counter=mesh_counter+mesh_lenght
    end do
  ! end of mesh process-----------------------

  
  print*,' '
  print*,' *********************************************'
  print*,'            Calculation finished. '
  write(15,*)'*********************************************'
  write(15,*) ' '
  write(15,*)'Codes Written By Moraad Biagooi at 1391-07-21'
  print*,'These values is in file results.txt'
  print*,' '
  print*,'Press Enter To EXit.'
  read(*,*)


end program
  
! This program will calculate root of a function with 
! the method of Newton-Rophson
! Written By Moraad Biagooi at 1391-07-21



