clear;
n=8;
for i=1:n
    for j=1:n
        if j==i
            A(i,j)=0;
        else
            A(i,j)=1;
        end
    end
end
A