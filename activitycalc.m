function [l,n]=activitycalc(N,count,A,lattice)
for i=1:N
    for j=1:N
        left=pbc(j-1,N);
        down=pbc(i+1,N);
        right=pbc(j+1,N);
        up=pbc(i-1,N);
        Neighbor(count,1:4)=[left right up down];
        A(i,j)=A(i,j)+lattice(i,left,1)+lattice(i,right,1)+lattice(up,j,1)+lattice(down,j,1)+lattice(i,j,1);
         count=count+1;
    end
end
l=A;
n=Neighbor;
end