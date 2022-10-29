! Written By Moraad Biagooi at 1391-07-21
! Subroutine used in Quantum_well_GS program which enter essential datas by operator.
subroutine sub_QWell_enterData(indc3,v0,L0,Lx,dLx,Lx_end)
implicit none

integer::indc3
double precision::L0,Lx,Lx_end,dLx ! Atomic unit
double precision::v0,V01,V02,L01,L02! Atomic unit

print*,'Hi. This program will calculate eigenvalues'
print*,'of a finit potential well by using Newton-Raphson'
print*,'method within it.' 
print*,'You can change those files as your want .'
print*,' '
print*,'Results will be in file result_QuantumWell.txt'
print*,'Codes Written By Moraad Biagooi at 1391-07-29'
print*,'    M.biagooi@gmail.com'
print*,' '
print*,'                 PRESS ENTER TO CONTINUE'
read(*,*)

print*,'If you want to calculate ground state eignvalues '
print*,'versus height of the well, enter the number [1] , '
print*,'if you want that energies versus lenght of well ' 
print*,'enter the number [2] . '
112 read*,indc3
if (indc3/=2 .and.indc3/=1) then
  print*, 'please choose 1 or 2'
  goto 112
endif
  
print*,' Note that, This code is written in atomic unit '
print*,'(h_bar=1,m=0.5,...)'

if (indc3==1) then
	print*,' Enter the range of height of the well'
	print*,'V1='
	read*,V01
	print*,'V2='
	read*,V02
    Lx_end=max(abs(v01),abs(v02))
	print*,' '
	print*,' Enter the lenght of the well'
	print*,' '
	read*,L01
	L02=L01
	print*,' Enter the the differential of Height'
	print*,' '
	read*,dLx
else
	print*,' Enter the range of lenght of the well'
	print*,'L1='
	read*,L01
	print*,'L2='
	read*,L02
    Lx_end=max(abs(L01),abs(L02))
	print*,' '
	print*,' Enter the the height of the well'
	print*,' '
	read*,V01
	V02=v01	
	print*,' Enter the the differential of Lenght'
	print*,' '
	read*,dLx
endif
  
print*,'                 PRESS ENTER TO CONTINUE'
read(*,*)

print*,'**********************************************'
print*,'          Calculating Ground state EignValues '


print*,'*********************************************'
print*,'   Lenght                       G.S. Energies  '  

print*,'*********************************************'
print*,'   Height                       G.S Energies  '  

L0=min(abs(L01),abs(L02))     
V0=Min(abs(V01),abs(V02))

if (indc3==1) then 
		Lx=v0
else
		Lx=L0
endif
      
dLx=abs(dLx)
end subroutine sub_QWell_enterData