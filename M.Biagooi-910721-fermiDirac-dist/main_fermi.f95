
!salam
!This program will Calculate Fermi dirac distribution function in different temperatures.
!THis code is written by Moraad Biagooi 
! at 1391-07-21
program fermi_dirac_distribution
use physical_constants
implicit none
double precision::e_fermi,energy,dE,E1,E2,temp(1:4)
double precision::fermi_dirac,test
integer::i0,i1,itr_end ! counter.
! temp: a matrix that contains Temprature in kelvin
! e_fermi: fermi energy of a matter in electron volts.
! energy : energy in electron volts.
! dE: differential of energy
! E1,E2: Range of energy for calculating the function. in electron volts.
print*,'This program will Calculate Fermi dirac distribution function in different temperatures.'
print*,'THe code is written by Moraad Biagooi at 1391-07-21'
print*,''
print*,'Enter a Fermi energy in electron volts units'
print*,'For example : sodium Fermi energy=3.23 ev'
print*,' Li =4.72 ev , K=2.12 ev , Mg=7.13 '
print*,'your Fermi energy='
read*,e_fermi
print*,'thanks! :)'
print*,' '
print*,'Now enter 3 different temprature that you want to calculate in them.'
print*,'for example : t1=100,t2=500,t3=4000 (in Kelvin unit)'
print*,'temprature 01='
read*,temp(1)
print*,'temprature 02='
read*,temp(2)
print*,'temprature 03='
read*,temp(3)
!print*,'temprature 04='
!read*,temp(4)

print*,'Enter Differential of energy,dE=?'
print*,'For Example :0.1 ev'
read*, dE
print*,'Enter Enter range of energy'
print*,'For Example :E1=1ev ,E2=8ev'
print*,'E1=?'
read*,E1
print*,'E2=?'
read*,E2

if(E1>E2) then
  test=E2
  E2=E1
  E1=test
  end if
  energy=e1

open(12,file='fer_di_result.txt')
!write(12,*) 'energy',((int(temp(i1))),i1=1,4) 

! ------------------------iteration process-----------
itr_end=int((E2-E1)/dE)
do i0=1,itr_end
  
energy=energy+dE

write(12,*) energy,fermi_dirac(energy,e_fermi,temp(1)),fermi_dirac(energy,e_fermi,temp(2)),fermi_dirac(energy,e_fermi,temp(3))!,fermi_dirac(energy,e_fermi,temp(4))

!write(12,*) energy,((fermi_dirac(energy,e_fermi,temp(i1))),i1=1,4) !summary of above line, But datas will have problems with origin.

end do
! end of iteration process

print*,'Calculation is done'
print*,'Results in file fer_di_result.txt'
print*,'THe code is written by Moraad Biagooi at 1391-07-21'
print*,'Press Enter to End'
read(*,*)

end program

!THis code is written by Moraad Biagooi 
! at 1391-07-21