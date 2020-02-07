function lat=growth(A,count,lattice,Neighbor,time,p,N)

for i=1:N
    for j=1:N
       
        if A(i,j)>=1
            p=p+1;
            lattice(i,j,1)=1;
            lattice(i,Neighbor(count,1),1:2)=[1 time*10+p];
            lattice(i,Neighbor(count,2),1:2)=[1 time*10+p];
            lattice(Neighbor(count,3),j,1:2)=[1 time*10+p];
            lattice(Neighbor(count,4),j,1:2)=[1 time*10+p];
            
            
        end
         count=count+1;
    end
end
lat=lattice;
end
 