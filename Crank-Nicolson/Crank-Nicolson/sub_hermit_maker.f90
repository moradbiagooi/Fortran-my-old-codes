subroutine sub_hermit_maker(H,n)
implicit none
integer::i,j,n
complex,dimension(0:n,0:n)::H
do i=0,n
do j=i,n
h(i,j)=(h(i,j)+conjg(h(j,i)))/2
h(j,i)=conjg(h(i,j))
end do
end do

end