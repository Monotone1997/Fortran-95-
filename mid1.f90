program main
implicit none
integer i,j,n,sum
integer,allocatable ::  a(:,:)

sum = 0
write(*,*)"������Ҫ��ӡ��������"
read(*,*)n
allocate(a(n,n))
 write(*,*) "������ǵ�չ��ʽΪ��"
do i=1,n

  do j=1,i

     if(j==1.or.j==i)then
       a(i,j)=1
       sum = sum +a(i,j)
     else
       a(i,j)=a(i-1,j-1)+a(i-1,j)
       sum = sum +a(i,j)
     end if

    end do
  
 
  write(*,'(100i5)')(a(i,j),j=1,i)
    end do
write(*,"('������ǵ��ܺ���:',i10)") sum

end 