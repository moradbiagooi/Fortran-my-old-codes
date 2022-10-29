! This function times func_01(x,T)integral is calculated in Romberg's method
! func_02(x) is density of state function.
! This code is written by Moraad Biagooi

function func_02(x)
use mod_phy_const
implicit none
real*8::func_02,x
real*8::m_si,Energy_fermi
energy_fermi=1.12/ryd  ! Silicon fermi enery in A.U.
m_si=0.19*m_e  ! one of effective masses of silicon electrons in  <100> direction.

func_02=(4*pi)*((2*m_si)**(1.5))*((abs(Energy_fermi-x))**(0.5))/(h_**3)
end