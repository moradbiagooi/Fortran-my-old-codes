! This subroutine is the core of Quantum_well_GS program
!that will calculate the rest.
!  Written By Moraad Biagooi at 1391-07-29
subroutine sub_QWell_rootFInder(indc3,v0,L0,Lx,dLx,Lx_end)
use zero_constants ! this module has parameters that is used in Newton-Raphson method
implicit none
integer::i0,indc2,indc3
double precision::p1,y0,y0_prime,x1,x2
double precision::p0,relErr,y1,DP,y1_prime
double precision::func_01,func_01_deriv
double precision::mesh_counter,mesh_lenght
double precision::v0,L0,Lx,dLx,Lx_end ! Atomic unit
double precision::odd_energy
! p0: first point 
! p1: next point
! max_ITR: maximum number of iterations
! epsilon: maximum value for function at root
!deLTa : maximum of relative error
! eta: :fune tuning for relative error


indc2=1
mesh_lenght=0.0001
open(15,file='result_QuantumWell.txt')


do while (Lx<=Lx_end)   ! A loop that changes well's height or well's lenght , choosed

	if (indc3==1) then 
		v0=Lx
	else
		L0=Lx
	endif
      
	! ---------------------mesh process begans  for finding root by newton-Raphson method----------------------
	x1=0.001
	x2=10
	mesh_lenght=0.0001
	mesh_counter=x1
	do while(mesh_counter<x2)
 
		p0=mesh_counter
		indc2=0  
		! -------------------root finding process by Newton-Raphson method---------------
    	y0=func_01(p0,v0,L0)
		y0_prime=func_01_deriv(p0)
  
    		if (y0_prime==0.0) then
				      
    		else if (y0==0.0) then
            	odd_Energy=-((p0*tan(p0))**2)/((L0/2)**2)
    			indc2=2
     
    		else if (y0*func_01(p0+mesh_lenght,v0,L0)<0) then
    			!----------------------- Iterations begans------------------
					do i0=0,max_itr
	  					DP=y0/y0_prime
  						p1=p0-DP
  
  					    y1=func_01(p1,v0,L0)
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
 
						if (relErr<delta .and. abs(y1)<epsilon) then
							p0=p1
							y0=y1

							indc2=2
					    	exit
						endif

						p0=p1
						y0=y1

					end do   ! i0=0,max_itr
					! --------------------END  of iteration------------------
				!end if !****** 
                
     				if (indc2==2) then
						odd_Energy=-((p0*tan(p0))**2)/((L0/2)**2)
      				 end if
			
			end if
       
   
		if (indc2==2) then
			print*,Lx,odd_energy,y1
			write(15,*)Lx,odd_energy
		end if

		mesh_counter=mesh_counter+mesh_lenght
	end do !(mesh_counter<x2)
	! ------------end of mesh process for finding root by newton-Raphson method---------------
	Lx=Lx+dLx
end do ! (Lx<Lx_end) 
!-----------------------------
print*,' '
print*,' *********************************************'
print*,'            Calculation finished. '
write(15,*)'*********************************************'
write(15,*) ' '
write(15,*)'Codes Written By Moraad Biagooi at 1391-07-29 '
write(15,*)' M.biagooi@gmail.com'
print*,'These values is in file result_QuantumWell.txt'
print*,' '
print*,'Press Enter To EXit.'
read(*,*)
 end subroutine sub_QWell_rootFInder