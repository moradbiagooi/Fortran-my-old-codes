! This function times func_02(x) integral is calculated in Romberg's method
! func_01(x,1) Fermi-Dirac distribution function.
! This code is written by Moraad Biagooi

function func_01(x,T)
use mod_phy_const
implicit none
real*8::func_01,x,T
real*8::fermi_energy
fermi_energy=1.12/ryd
func_01=1/(1+exp((x-fermi_energy)/(k_bolt*T)))
end