! Salam.
! This program will calculate Finite Quantum well ground state
! ! Written By Moraad Biagooi at 1391-07-29
!. M.biagooi@gmail.com
program Quantum_well_GS  !Finite Quantum well ground state calculator
implicit none
integer::indc3
double precision::v0,L0,Lx,dLx,Lx_end ! Atomic unit


call sub_QWell_enterData(indc3,v0,L0,Lx,dLx,Lx_end)
call sub_QWell_rootFInder(indc3,v0,L0,Lx,dLx,Lx_end)

end program
  

! Written By Moraad Biagooi at 1391-07-29



