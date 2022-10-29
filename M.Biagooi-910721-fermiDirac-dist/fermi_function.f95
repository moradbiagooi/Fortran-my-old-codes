! fermi dirac distribution function
function fermi_dirac(e,ef,t)
use physical_constants
implicit none
! e= energy in electron volt units,
! ef=fermi energy. in electron volt units,
! t=temprature in kelvins
! boltz= Boltzman constant in electron volts., decided by module "physical_constants"
double precision::fermi_dirac,e,ef,t
fermi_dirac=1/(1+exp((e-ef)/(boltz*t)))
end


!THis code is written by Moraad Biagooi 
! at 1391-07-21