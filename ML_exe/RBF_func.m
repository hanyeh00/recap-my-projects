
function out=RBF_func(Train_set,Test_set)
Classes=Train_set(:,end);
A2=max(Classes)-min(Classes)+1;

iteration=50;

R=1;
tic;
while R<iteration
R=R+1;
No_of_Centers=max(Classes)-min(Classes)+1;
    T=0;Q=0;
    Train=Train_set(:,1:end-1);
    Test=Test_set(:,1:end-1);
    Train_Class=Train_set(:,end);
    Test_Class=Test_set(:,end);
    
    I=1;
    for t=1:No_of_Centers
        j=find(Train_Class==(t+min(Train_Class)-1));
        if isempty(j)~=1
            n=length(j);
            l=randi(n);
            c0(I)=j(l);
            I=I+1;
        else
            T=t;Q=Q+1;
        end
    end
    Centers=Train(c0,:);
    for i=1:(No_of_Centers-Q)
        for j=1:length(Train_Class)
            D2(j,i)=sqrt((sum((Train(j,:)-Train(c0(i),:)).^2))/size(Train,2));
        end
    end
    D_max=max(max(D2(c0,:)));
    Sigma=D_max/sqrt(No_of_Centers-Q);
    
    for i=1:(No_of_Centers-Q)
        for j=1:size(Test,1)
            D3(j,i)=sqrt((sum((Test(j,:)-Train(c0(i),:)).^2))/size(Test,2));
        end
    end
    PHI=exp(-((D3.^2)./(Sigma^2)));
    if T~=0
        PHI=[PHI(:,1:T-1),zeros(size(PHI,1),1),PHI(:,T:end)];
    end
    W=pinv(PHI)*D3;
    
    
    for i=1:length(PHI)
        RBF_Classes(i)=find(PHI(i,:)==max(PHI(i,:)));
    end
    RBF_Classes=RBF_Classes-1+min(Train_Class);
    output=RBF_Classes;
end
output=round(output);
out=Evaluate(output',Test_set(:,end));

end
 result(fold,:)=RBF_func(train,test);